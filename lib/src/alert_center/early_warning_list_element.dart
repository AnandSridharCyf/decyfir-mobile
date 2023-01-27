import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class EarlyWarningListElement extends StatefulWidget {
  final dynamic item;

  const EarlyWarningListElement({super.key, this.item});

  @override
  State<EarlyWarningListElement> createState() => _EarlyWarningListElementState();
}

class _EarlyWarningListElementState extends State<EarlyWarningListElement> {
  bool isExpanded = false;
  int descContainer = 70;

  @override
  Widget build(BuildContext context) {
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
                          child: Text(widget.item['reportTypeName'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Text(
                          Subroutines.getDate(widget.item['publishAt']),
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
                    child: Text(widget.item['reportName'] ?? '',
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
                    
                    child: Text(widget.item['reportTypeName'])),
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

  }
}
