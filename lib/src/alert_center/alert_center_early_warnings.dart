import 'dart:convert';

import 'package:decyfir/src/alert_center/early_warning_list_element.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/settings/settings_controller.dart';
import 'package:decyfir/src/widgets/risk_widget.dart';
import 'package:flutter/material.dart';

class AlertCenterEarlyWarnings extends StatefulWidget {
  static const routeName = '/alert_center_list';

  const AlertCenterEarlyWarnings({super.key, required SettingsController controller});

  @override
  State<AlertCenterEarlyWarnings> createState() => _AlertCenterEarlyWarningsState();
}

class _AlertCenterEarlyWarningsState extends State<AlertCenterEarlyWarnings> {
  bool loading = true;
  List finalList = [], earlyWarningsData = [];
  List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
  List<bool> riskLevelActive = [true, false, false];
  List<int> riskLevelCounts = [0, 0, 0];

  @override
  void initState() {
    super.initState();
    SharedPreferencesHandler()
        .getString('authToken')
        .then((value) => _getEarlyWarn(value));
  }

  void _getEarlyWarn(String token) async {
    setState(() {
      loading = true;
    });
    SharedPreferencesHandler().getString('orgId').then((value) async {
      var earlyWarnResp = await Subroutines.getEarlyWarning(token, value);
      if (earlyWarnResp.statusCode == 200) {
        setState(() {
          earlyWarningsData = json.decode(earlyWarnResp.body);
          loading = false;
        });
      }
    });
  }

  List updateList(List list) {
    List outList = Subroutines.filterActive(list, riskLevelActive);
    return outList;
  }

  @override
  Widget build(BuildContext context) {
    finalList = updateList(Subroutines.filterChosen(earlyWarningsData));
    riskLevelCounts = Subroutines.generateCounts(earlyWarningsData);
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
                    Text('Early Warnings',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary))
                  ],
                ),
                //const Icon(FontAwesomeIcons.sort, size: 30)
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
              child: Text('Find information related to your attack surface',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary))),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Row(
              children: [
                if (riskLevelsSelected.contains("Critical"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[0] = !riskLevelActive[0];
                          }),
                      child: createRiskLevelChip('Critical', riskLevelActive[0],
                          riskLevelCounts[0], context)),
                if (riskLevelsSelected.contains("High"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[1] = !riskLevelActive[1];
                          }),
                      child: createRiskLevelChip('High', riskLevelActive[1],
                          riskLevelCounts[1], context)),
                if (riskLevelsSelected.contains("Medium"))
                  GestureDetector(
                      onTap: () => setState(() {
                            riskLevelActive[2] = !riskLevelActive[2];
                          }),
                      child: createRiskLevelChip('Medium', riskLevelActive[2],
                          riskLevelCounts[2], context))
              ],
            ),
          ),
          loading
              ? SizedBox(
                  height: MediaQuery.of(context).size.height - 300,
                  child: const Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  )),
                )
              : finalList.isEmpty
                          ? const Center(
                              child: Text('No early warnings in this category'))
                          : Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height - 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    restorationId: 'earlyWarningList',
                    itemCount: finalList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return EarlyWarningListElement(item: finalList[index]);
                    },
                  )),
        ],
      ),
    );

    /*return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/decyfir_logo.png'),
          ),
          actions: [SizedBox(width: 40)],
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            restorationId: 'alertCenterList',
            itemCount: tempList.length,
            itemBuilder: (BuildContext context, int index) {
              var item = tempList[index];
              return Container(
                //margin: const EdgeInsets.all(15),
                margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45, width: 1)
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black38, width: 1))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                            padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                            child: Text('${item['riskScore']}', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                            child: Text(Subroutines.getRiskLevel(item['riskScore']).toString()),
                          ),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Text(item['version']),
                              const SizedBox(width: 10),
                              Text(item['publishAt'])
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(item['reportName'], style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 14)),
                          const SizedBox(height: 6),
                          Text(item['description'], style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 12),)
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          )
        )
      ),
    );*/
  }
}
