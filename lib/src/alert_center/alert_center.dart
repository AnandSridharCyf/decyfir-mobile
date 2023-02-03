import 'dart:convert';

import 'package:decyfir/src/alert_center/alert_center_latest_alerts_list.dart';
import 'package:decyfir/src/alert_center/alert_center_list.dart';
import 'package:decyfir/src/common/decyfir_drawer.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/widgets/animated_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertCenter extends StatefulWidget {
  final String username;

  const AlertCenter({super.key, required this.username});

  static const routeName = '/alert_center';

  @override
  State<AlertCenter> createState() => _AlertCenterState();
}

class _AlertCenterState extends State<AlertCenter> {
  int _selectedAlertPage = 0;
  bool _loading = true;

  void _onAlertPageSelected(int index) {
    setState(() {
      _selectedAlertPage = index;
    });
  }

  Widget _populatePage(int index) {
    if (!_loading) {
      if (index == 0) {
        return const AlertCenterLatestAlertsList();
      } else {
        return const AlertCenterList();
      }
    } else {
      return const Center(
        child: SizedBox(width: 100, height: 100, child: AnimatedLogo()),
      );
    }
  }

  void queryAndSaveAccountData() async {
    SharedPreferencesHandler().getString('authToken').then((token) async {
      if (token != '') {
        SharedPreferencesHandler().getString('username').then((value) async {
          if (value != null) {
            var response = await Subroutines.getOrgUserData(token, value);
            switch (response.statusCode) {
              case 200:
                var userData = json.decode(response.body);
                if (userData != null) {
                  SharedPreferencesHandler()
                      .setString('orgId', userData['orgId'].toString());
                  SharedPreferencesHandler()
                      .setString('orgName', userData['orgName']);
                      SharedPreferencesHandler()
                      .setString('email', userData['email']);
                  SharedPreferencesHandler()
                      .setString('firstName', userData['firstname']);
                  SharedPreferencesHandler()
                      .setString('lastName', userData['lastname']);
                  SharedPreferencesHandler()
                      .setString('timeZone', userData['timeZone']);
                  SharedPreferencesHandler()
                      .setString('phone', userData['phone']);
                  SharedPreferencesHandler()
                      .setString('createdDate', userData['createddate']);
                }
                setState(() {
                  _loading = false;
                });
                break;
              default:
            }
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    queryAndSaveAccountData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            drawer: const DecyfirDrawer(
              key: null,
              organisation: 'CYFIRMA',
              orgEmail: 'aptus-dev.aptus.in',
            ),
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              leading: null,
              shadowColor: Theme.of(context).colorScheme.onPrimaryContainer,
              elevation: 1,
              title: Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/decyfir_logo.png'),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              actions: [],
            ),
            body: _populatePage(_selectedAlertPage),

            /*body: ListView.builder(
              restorationId: 'alertCenter',
              itemCount: _list.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _list[index];

                return GestureDetector(
                  onTap: (() => index != 4 ? Navigator.restorablePushNamed(context, AlertCenterList.routeName): Navigator.restorablePushNamed(context, AlertCenterLatestAlerts.routeName)),
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Icon(item['icon'], size: 30,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 13, 20, 15),
                          child: Text(item['title'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        ),
                        Text('${item['count']}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10)
                      ]
                    ),
                  ),
                );
              },
            ),*/
            bottomNavigationBar: Container(
              color: Theme.of(context).colorScheme.background,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                currentIndex: _selectedAlertPage,
                iconSize: 20,
                elevation: 5,
                selectedItemColor: Theme.of(context).colorScheme.secondary,
                unselectedItemColor: Theme.of(context).colorScheme.primary,
                //backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                onTap: _onAlertPageSelected,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.bell), label: 'Latest Alerts'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.circleExclamation),
                      label: 'Early Warnings')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
