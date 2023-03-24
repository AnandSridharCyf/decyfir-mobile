import 'package:decyfir/src/alert_center/alert_center_details_view.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertCenterListElement extends StatefulWidget {
  final dynamic item;
  final bool isExpanded;

  const AlertCenterListElement({super.key, required this.item, required this.isExpanded});

  @override
  State<AlertCenterListElement> createState() => _AlertCenterListElementState();
}

class _AlertCenterListElementState extends State<AlertCenterListElement> {
  int descContainer = 70;
  late bool isExpanded;

  @override
  void initState() {
    isExpanded = widget.isExpanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String category = widget.item['subCategory'] != null
        ? widget.item['subCategory'].toUpperCase()
        : (widget.item['category'] != null
            ? widget.item['category'].toUpperCase()
            : widget.item['type']);
    String description = widget.item['description'] ?? '';
    // int countLines = (description != null && description.length > 50) ? description.length ~/ 50 : 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: (() => Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => AlertCenterDetailsView(item: widget.item)) )),
          child: Container(
            constraints: const BoxConstraints(minHeight: 80),
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.blueGrey.shade200)),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 2, 15, 3),
              decoration: BoxDecoration(
                  //color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.grey.shade300,
                        Colors.grey.shade100,
                        Colors.grey.shade200,
                        Colors.white
                      ]),
                  border: Border(
                      left: BorderSide(
                          color:
                              Subroutines.getRiskColor(widget.item['riskScore']),
                          width: 15))),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //Design 3
                    padding: const EdgeInsets.fromLTRB(0, 10, 15, 7),
                    //Design 1
                    //padding: EdgeInsets.fromLTRB(0, 5, 15, 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //width: 100,
                          //constraints: const BoxConstraints(maxWidth: 120),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueGrey,
                          ),
                          padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                          child: Text(category,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Text(
                          Subroutines.getDate(widget.item['createdDate']),
                          style: const TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //Design 3
                    padding: const EdgeInsets.fromLTRB(0, 3, 15, 7),
                    //Design 1
                    //padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                    child: Text(widget.item['title'] ?? '',
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 4),
          //padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(5, 10),
                  bottomRight: Radius.elliptical(5, 10)),
              color: Colors.grey.shade100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              GestureDetector(
                onTap: (() => setState(() {
                      isExpanded = !isExpanded;
                    })),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.elliptical(5, 10),
                          bottomRight: Radius.elliptical(5, 10)),
                    ),
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Text(
                      isExpanded ? 'Hide Snippet' : 'See Snippet',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Color(0xFF37474F)),
                    )),
              ),
              AnimatedContainer(
                height: isExpanded ? 125 : 0,
                duration: const Duration(milliseconds: 400),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Text(
                          widget.item['category'],
                          style: const TextStyle(
                              color: Color(0xFF37474F),
                              fontWeight: FontWeight.w700),
                        )),
                    SingleChildScrollView(
                        child: SizedBox(
                            height: 100,
                            child: Html(
                              data: "$description...",
                              style: {
                                "body": Style(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300),
                              },
                            ))),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );

    // ignore: dead_code
    return Container(
      constraints: const BoxConstraints(minHeight: 70),
      margin: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.blueGrey.shade200)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
        decoration: BoxDecoration(
            //color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.white,
              Colors.grey.shade100,
              Colors.white54,
              Colors.grey.shade100,
              Colors.white54
            ])),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 15, 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Subroutines.getRiskColor(widget.item['riskScore'])),
                padding: const EdgeInsets.all(10),
                child: const Icon(FontAwesomeIcons.bell,
                    color: Colors.white, size: 23)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Subroutines.getDate(widget.item['createdDate']),
                    style: const TextStyle(color: Colors.black87),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(widget.item['title'],
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Container(
              //width: 100,
              constraints: const BoxConstraints(maxWidth: 120),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey.shade500,
              ),
              padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
              child: Text(widget.item['subCategory'] ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
    return Container(
      constraints: const BoxConstraints(minHeight: 60),
      margin: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.blueGrey.shade200)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 3, 15, 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.grey.shade100,
                Colors.white54,
                Colors.grey.shade100,
                Colors.white54
              ]),
          // border: Border(
          //     left: BorderSide(
          //         color: Subroutines.getRiskColor(widget.item['riskScore']),
          //         width: 15))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 5, 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Subroutines.getRiskColor(
                                widget.item['riskScore']),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(0, 15, 5, 15),
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(width: 10),
                      Text(Subroutines.getRiskLevel(widget.item['riskScore']),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Subroutines.getRiskColor(
                                  widget.item['riskScore']))),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey,
                    ),
                    padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                    child: Text(widget.item['subCategory'] ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 3, 5, 7),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(widget.item['title'],
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    Subroutines.getDate(widget.item['createdDate']),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    return Container(
      constraints: const BoxConstraints(minHeight: 70),
      margin: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.blueGrey.shade200)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
        decoration: BoxDecoration(
            //color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.grey.shade100,
                  Colors.white54,
                  Colors.grey.shade100,
                  Colors.white54
                ]),
            border: Border(
                left: BorderSide(
                    color: Subroutines.getRiskColor(widget.item['riskScore']),
                    width: 15))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Subroutines.getDate(widget.item['createdDate']),
                    style: const TextStyle(color: Colors.black87),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(widget.item['title'],
                        maxLines: 2,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            Container(
              //width: 100,
              constraints: const BoxConstraints(maxWidth: 120),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueGrey,
              ),
              padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
              child: Text(widget.item['subCategory'] ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
    return Container(
      constraints: const BoxConstraints(minHeight: 60),
      margin: const EdgeInsets.fromLTRB(10, 3, 10, 3),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.blueGrey.shade200)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 3, 15, 5),
        decoration: BoxDecoration(
            //color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.grey.shade100,
                  Colors.white54,
                  Colors.grey.shade100,
                  Colors.white54
                ]),
            border: Border(
                left: BorderSide(
                    color: Subroutines.getRiskColor(widget.item['riskScore']),
                    width: 15))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //Design 3
              padding: const EdgeInsets.fromLTRB(0, 10, 15, 7),

              //Design 1
              //padding: EdgeInsets.fromLTRB(0, 5, 15, 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    //width: 100,
                    //constraints: const BoxConstraints(maxWidth: 120),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey,
                    ),
                    padding: const EdgeInsets.fromLTRB(7, 4, 7, 4),
                    child: Text(widget.item['subCategory'] ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    Subroutines.getDate(widget.item['createdDate']),
                    style: const TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
            Container(
              //Design 3
              padding: const EdgeInsets.fromLTRB(0, 3, 15, 7),
              //Design 1
              //padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
              child: Text(widget.item['title'],
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Subroutines.getRiskColor(
                                widget.item['riskScore']),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        width: 10,
                        height: 10,
                      ),
                      const SizedBox(width: 10),
                      Text(Subroutines.getRiskLevel(widget.item['riskScore']),
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Subroutines.getRiskColor(
                                  widget.item['riskScore']))),
                      const SizedBox(width: 15),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 3),
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(widget.item['category'] ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54)),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                    child: Text(
                      Subroutines.getDate(widget.item['createdDate']),
                      style: const TextStyle(color: Colors.black87),
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Category',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Container(height: 7),
                        Text(widget.item['subCategory'] ?? '',
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Subroutines.getRiskColor(
                              widget.item['riskScore']),
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(10),
                      width: 40,
                      height: 40,
                      child: Text(widget.item['riskScore'].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                  ],
                ),
                Container(height: 10),
                const Text('Alert',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold)),
                Container(height: 7),
                Text(widget.item['title'],
                    style: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500)),
                Container(height: 10),
                const Text('Description',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold)),
                Container(height: 7),
                Text(widget.item['description'] ?? '',
                    style: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500)),
                Container(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
