import 'dart:convert';
import 'package:decyfir/src/settings/settings_controller.dart';
import 'package:decyfir/src/widgets/animated_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:decyfir/src/alert_center/alerts_center_list_element.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/widgets/filter_modal.dart';
import 'package:decyfir/src/widgets/risk_widget.dart';

class AlertCenterLatestAlerts extends StatefulWidget {
  final String? data;
  final SettingsController controller;

  static const routeName = '/alert_center_latest_alerts';

  const AlertCenterLatestAlerts({super.key, this.data, required this.controller});

  @override
  State<AlertCenterLatestAlerts> createState() =>
      _AlertCenterLatestAlertsList();
}

class _AlertCenterLatestAlertsList
    extends State<AlertCenterLatestAlerts> {
  List finalList = [], _alertsData = [];
  List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
  List<bool> riskLevelActive = [true, false, false];
  List<int> riskLevelCounts = [0, 0, 0];
  String category = '', subCategory = '', apiAlias = '';
  bool loading = true, isExpanded = false;
  late List<bool> tempBools;
  

  @override
  void initState() {
    super.initState();
    tempBools = widget.controller.riskLevelActive;
    SharedPreferencesHandler()
        .getString('authToken')
        .then((value) => _getLatestAlerts(value));
  }

  void _getLatestAlerts(String token) async {
    setState(() {
      loading = true;
    });

    SharedPreferencesHandler().getString('orgId').then((value) async {
      var alertResp =
          await Subroutines.getLatestAlerts(token, apiAlias, false, value);
      if (alertResp.statusCode == 200) {
        setState(() {
          _alertsData = json.decode(alertResp.body)['Alerts'];
          loading = false;
        });
      }
    });
  }

  List updateList(List list) {
    List outList = Subroutines.filterCategories(
        Subroutines.filterActive(list, riskLevelActive), category, subCategory);
    return outList;
  }

  void setModalCategory(String category, String subCategory, String apiAlias) {
    setState(() {
      this.category = category;
      this.subCategory = subCategory;
      this.apiAlias = apiAlias;
      SharedPreferencesHandler()
          .getString('authToken')
          .then((value) => _getLatestAlerts(value));
    });
  }

  @override
  Widget build(BuildContext context) {
    finalList = updateList(Subroutines.filterChosen(_alertsData));
    print(tempBools);
    riskLevelCounts = Subroutines.generateCounts(_alertsData);
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.background),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text('Dashboard',
                        style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.secondary)),
                    Text('Latest Alerts',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary))
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: (() => showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return FilterModal(context, setModalCategory,
                                data: finalList);
                          })),
                      child: Icon(FontAwesomeIcons.filter,
                          size: 30,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(width: 5)
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: category != ''
                ? Text('Showing your alerts for $category',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary))
                : Text('Showing all your alerts',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary)),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (riskLevelsSelected.contains("Critical"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[0] = !riskLevelActive[0];
                            isExpanded = false;
                          }),
                      child: createRiskLevelChip('Critical', riskLevelActive[0],
                          riskLevelCounts[0], context)),
                if (riskLevelsSelected.contains("High"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[1] = !riskLevelActive[1];
                            isExpanded = false;
                          }),
                      child: createRiskLevelChip('High', riskLevelActive[1],
                          riskLevelCounts[1], context)),
                if (riskLevelsSelected.contains("Medium"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[2] = !riskLevelActive[2];
                            isExpanded = false;
                          }),
                      child: createRiskLevelChip('Medium', riskLevelActive[2],
                          riskLevelCounts[2], context))
              ],
            ),
          ),
          loading
              ? SizedBox(
                  height: MediaQuery.of(context).size.height - 400,
                  child: Center(
                    //child: CircularProgressIndicator(color: Colors.black),
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: loading ? 100 : 0,
                        width: loading ? 100 : 0,
                        child: const AnimatedLogo()),
                  ))
              : finalList.isEmpty
                          ? const Center(
                              child: Text('No alerts in this category'))
                          : Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height - 295,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    restorationId: 'alertCenterList',
                    itemCount: finalList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AlertCenterListElement(
                              item: finalList[index],
                              isExpanded: isExpanded,
                            );
                    },
                  ))
        ],
      ),
    );
  }
}
