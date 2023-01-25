import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlertCenterListElement extends StatefulWidget {
  final dynamic item;

  const AlertCenterListElement({super.key, this.item});

  @override
  State<AlertCenterListElement> createState() => _AlertCenterListElementState();
}

class _AlertCenterListElementState extends State<AlertCenterListElement> {
  bool isExpanded = false;
  int descContainer = 70;

  @override
  Widget build(BuildContext context) {
    String category = widget.item['subCategory'] != null ? widget.item['subCategory'].toUpperCase() : "";
    String description = widget.item['description'] ?? '';
    int countLines = (description != null && description.length > 50) ? description.length ~/ 50 : 1;
    return GestureDetector(
      onTap: (() => setState(() {
        isExpanded = !isExpanded;
        print(isExpanded ? '${widget.item['id']} Opened' : '${widget.item['id']} Closed');
      })),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
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
          AnimatedContainer(
            margin: const EdgeInsets.fromLTRB(20, 0, 12, 3),
            decoration: BoxDecoration(
              color: Colors.white54
            ),
            height: isExpanded ? 30*countLines.toDouble() + 50 : 0,
            duration: const Duration(milliseconds: 400),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    
                    child: Text(widget.item['category'])),
                  SizedBox(
                    height: 100,
                    child: Html(data: description)),
                ],
              ),
            ),
          )
        ],
      ),
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
