import 'package:decyfir/src/alert_center/alert_center_latest_alerts_list.dart';
import 'package:decyfir/src/alert_center/alert_center_list.dart';
import 'package:decyfir/src/common/decyfir_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertCenter extends StatefulWidget {
  const AlertCenter({
    super.key
  });

  static const routeName = '/alert_center';

  @override
  State<AlertCenter> createState() => _AlertCenterState();
}

class _AlertCenterState extends State<AlertCenter> {
  int _selectedAlertPage = 0;

  void _onAlertPageSelected(int index) {  
    setState(() {  
      _selectedAlertPage = index;  
    });  
  }

  Widget _populatePage(int index) {
    if(index == 0) {
      return const AlertCenterLatestAlertsList();
    } else {
      return const AlertCenterList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DecyfirDrawer(key: null, organisation: 'CYFIRMA', orgEmail: 'aptus-dev.aptus.in',),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: null,
          shadowColor: Colors.black,
          elevation: 1,
          title: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/decyfir_logo.png'),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [],
        ),

        body:_populatePage(_selectedAlertPage),  

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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedAlertPage,
          iconSize: 20,
          elevation: 5,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          backgroundColor: Colors.black12,
          onTap: _onAlertPageSelected,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bell ), label: 'Latest Aletts'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.circleExclamation ), label: 'Early Warning')
          ],

        ),
      ),
    );
  }
}
