import 'dart:convert';

import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/widgets/risk_widget.dart';
import 'package:flutter/material.dart';

class AlertCenterList extends StatefulWidget {
  static const routeName = '/alert_center_list';

  const AlertCenterList({super.key});

  @override
  State<AlertCenterList> createState() => _AlertCenterListState();
}

class _AlertCenterListState extends State<AlertCenterList> {
  bool loading = true;
  List finalList = [], earlyWarningsData = [];
  List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
  List<bool> riskLevelActive = [true, false, false];
  List<int> riskLevelCounts = [0, 0, 0];
  List tempList = [
    {
      'riskScore': 7,
      "reportName": 'Early Warning Cyfirma 17_oct_2022',
      'description': 'early warning',
      'version': 'v1',
      'publishAt': 'Oct-17-2022'
    },
    {
      'riskScore': 10,
      "reportName": 'Early Warning Cyfirma 16_oct_2022',
      'description': 'early warning',
      'version': 'v1',
      'publishAt': 'Oct-16-2022'
    },
    {
      'riskScore': 6,
      "reportName": 'Early Warning Cyfirma 14_oct_2022',
      'description': 'early warning',
      'version': 'v3',
      'publishAt': 'Oct-14-2022'
    },
    {
      'riskScore': 3,
      "reportName": 'Early Warning Cyfirma 7_oct_2022',
      'description': 'early warning',
      'version': 'v2',
      'publishAt': 'Oct-7-2022'
    }
  ];

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Text>[
                  Text('Dashboard',
                      style: TextStyle(fontSize: 12, color: Colors.black87)),
                  Text('Early Warnings',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600))
                ],
              ),
              //const Icon(FontAwesomeIcons.sort, size: 30)
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
            : Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height - 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    restorationId: 'alertCenterList',
                    itemCount: finalList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = finalList[index];
                      return Container(
                        margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black45, width: 1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(18, 12, 18, 12),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black38, width: 1))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Subroutines.getRiskColor(
                                                item['riskScore']),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 15, 15),
                                        width: 10,
                                        height: 10,
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            7, 4, 7, 4),
                                        child: Text(
                                          Subroutines.getRiskLevel(
                                                  item['riskScore'])
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Subroutines.getRiskColor(
                                                  item['riskScore'])),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('v${item['version']}'),
                                      const SizedBox(width: 10),
                                      Text(Subroutines.getDate(
                                          item['publishAt']))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(18, 12, 18, 12),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Subroutines.getRiskColor(
                                            item['riskScore']),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: const EdgeInsets.all(10),
                                    width: 40,
                                    height: 40,
                                    child: Text(item['riskScore'].toString(),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(item['reportName'] ?? '',
                                            style: const TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                        const SizedBox(height: 6),
                                        Text(
                                          item['description'] ?? '',
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })),
      ],
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
