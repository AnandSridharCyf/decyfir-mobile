import 'package:decyfir/src/alert_center/alert_center_latest_alerts_list.dart';
import 'package:flutter/material.dart';

class AlertCenterLatestAlerts extends StatefulWidget {
  
  static const routeName = '/alert_center_latest_alerts';

  const AlertCenterLatestAlerts({super.key});

  @override
  State<AlertCenterLatestAlerts> createState() => _AlertCenterLatestAlertsState();
}

class _AlertCenterLatestAlertsState extends State<AlertCenterLatestAlerts> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/decyfir_logo.png'),
          ),
          actions: [const SizedBox(width: 40)],
        ),
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: const Text('Latest Alerts', style: TextStyle(fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w700))),
              Container(
                width: 37,
                margin: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.red, width: 3))
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                child: const Text('Find information related to your attack surface and manage observations here'),
              ),
              Container(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        //padding: const EdgeInsets.all(10),
                        child: const TabBar(
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,                          
                          tabs:[
                            Tab(text: 'Attack Surface'),
                            Tab(text: 'Digital Risk') ,
                            Tab(text: 'Vulnerabilities')  
                          ]
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 240,
                        width: MediaQuery.of(context).size.width,
                        child: const TabBarView(
                          children: [
                            AlertCenterLatestAlertsList(data: 'Attack Surface'),
                            AlertCenterLatestAlertsList(data: 'Pane 2'),
                            AlertCenterLatestAlertsList(data: 'Pane 3'),
                          ]
                        ),
                      )
                                
                    ],
                    
                  ),
                ),
              ),
              
              

            ],
          ),
        ),
      ),
    ));
  }
}