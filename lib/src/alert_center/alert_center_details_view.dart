import 'package:decyfir/src/alert_center/alert_center.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class AlertCenterDetailsView extends StatelessWidget {
  final dynamic item;

  const AlertCenterDetailsView({super.key, this.item});

  static const routeName = '/alert_center_details';

  @override
  Widget build(BuildContext context) {
    double titleBarHeight = 60;
    String createdDate = Subroutines.getDate(item["createdDate"]);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: null,
      /*AppBar(
        leading: GestureDetector(
          onTap: (() =>
              Navigator.pushReplacementNamed(context, AlertCenter.routeName)),
          child: Icon(Icons.arrow_back,
              color: Theme.of(context).colorScheme.primary, size: 34),
        ),
        title: Text("${item['fullData']['title']}", style: const TextStyle(fontSize: 18)),
      ),*/
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(
                height: titleBarHeight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  GestureDetector(
                    onTap: (() => Navigator.pushReplacementNamed(
                        context, AlertCenter.routeName)),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.arrow_back,
                          color: Theme.of(context).colorScheme.primary,
                          size: 34),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Text("${item['title']}"),
                  )
                ]),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).size.height - 26 - titleBarHeight,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 15, 5),
                              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: Text(createdDate),

                          )),
                          
                        ],
                      ),
                    ),

                    Text('More Information Here. ${item.toString()}'),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
