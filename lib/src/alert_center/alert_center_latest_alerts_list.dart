import 'dart:convert';

import 'package:decyfir/src/alert_center/alerts_center_list_element.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/widgets/filter_modal.dart';
import 'package:decyfir/src/widgets/risk_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertCenterLatestAlertsList extends StatefulWidget {
  final String? data;

  const AlertCenterLatestAlertsList({super.key, this.data});

  @override
  State<AlertCenterLatestAlertsList> createState() => _AlertCenterLatestAlertsListState();
}

class _AlertCenterLatestAlertsListState extends State<AlertCenterLatestAlertsList> {
  List finalList = [], _alertsData = [];
  List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
  List<bool> riskLevelActive = [true, false, false];
  List<int> riskLevelCounts = [0, 0, 0];
  String category = '', subCategory = '';
  bool loading = true;
  
  @override
  void initState() {
    super.initState();
    SharedPreferencesHandler().getString('authToken').then((value) => _getLatestAlerts(value));
  }

  void _getLatestAlerts(String token) async {
    var localList = [];
    setState(() {
      loading = true;
    });
    var digitalRiskResp = await Subroutines.getLatestAlerts(token, "DigitalRisk", false);
    if(digitalRiskResp.statusCode == 200) {
      localList = json.decode(digitalRiskResp.body)['Alerts'];
      var attackSurfaceResp = await Subroutines.getLatestAlerts(token, "Attack Surface", false);
      if(attackSurfaceResp.statusCode == 200) {
        localList.addAll(json.decode(attackSurfaceResp.body)['Alerts']);
        var vulResp = await Subroutines.getLatestAlerts(token, "Vulnerability", false);
        if(vulResp.statusCode == 200) {
          localList.addAll(json.decode(vulResp.body)['Alerts']);
          setState(() {
            _alertsData = localList;
            loading = false;
          });
        }
      }   
    }    
  }

  List updateList(List list) {
    List outList = Subroutines.filterCategories(Subroutines.filterActive(list, riskLevelActive), category, subCategory);
    return outList;
  }

  void setModalCategory(String category, String subCategory) {
    setState(() {
      this.category = category;
      this.subCategory = subCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    finalList = updateList(Subroutines.filterChosen(_alertsData));
    riskLevelCounts = Subroutines.generateCounts(_alertsData);
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFE6ECEC)
      ),
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
                  children: const <Text> [
                    Text('Dashboard', style: TextStyle(fontSize: 12, color: Colors.black87)),
                    Text('Latest Alerts', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600))
                  ],
                ),
                Row(
                  children: [
                    /*GestureDetector(
                      onTap: (() => showModalBottomSheet(context: context, builder: (context) {
                        return Wrap(
                          children: [
                            GestureDetector(
                              onTap: () => {
                                
                              },
                              child: const ListTile(
                                leading: Icon(FontAwesomeIcons.section),
                                title: Text('Sort by Category'),
                              ),
                            ),
                            
                            const ListTile(
                              leading: Icon(Icons.copy),
                              title: Text('Sort by Date'),
                            ),
                          ],
                        );
                      })),
                      child: const Icon(FontAwesomeIcons.sort, size: 30),
                    ),*/
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: (() => showModalBottomSheet(context: context, builder: (context) {
                        return FilterModal(context, setModalCategory);
                      })),
                      child: const Icon(FontAwesomeIcons.filter, size: 30),
                    ),
                    const SizedBox(width: 5)
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: const Text('Find information related to your attack surface'),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Row(
              children: [
                if(riskLevelsSelected.contains("Critical")) GestureDetector(
                  onTap: () => setState(() {
                    riskLevelActive[0] = !riskLevelActive[0];
                  }),
                  child: createRiskLevelChip('Critical', riskLevelActive[0], riskLevelCounts[0], context)
                ),
                if(riskLevelsSelected.contains("High")) GestureDetector(
                  onTap: () => setState(() {
                    riskLevelActive[1] = !riskLevelActive[1];
                  }),
                  child: createRiskLevelChip('High', riskLevelActive[1], riskLevelCounts[1], context)
                ),
                if(riskLevelsSelected.contains("Medium")) GestureDetector(
                  onTap: () => setState(() {
                    riskLevelActive[2] = !riskLevelActive[2];
                  }),
                  child: createRiskLevelChip('Medium', riskLevelActive[2], riskLevelCounts[2], context)
                )
              ],
            ),
          ),
          loading ? SizedBox(
            height: MediaQuery.of(context).size.height - 320,
            child: const Center(child: CircularProgressIndicator(color: Colors.black),)) : SizedBox(
            height: MediaQuery.of(context).size.height - 320,
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var item in finalList) AlertCenterListElement(item: item)
                  ],
            )),
          ),
        ],
      ),
    );
  }
}
