import 'package:flutter/material.dart';

class AlertCenterItem {
  Icon? itemIcon;
  String? itemLabel;
  int? itemCount;

  AlertCenterItem({this.itemIcon, this.itemLabel, this.itemCount});

  factory AlertCenterItem.fromJson(Map json) => AlertCenterItem(
    itemIcon: json['itemIcon'],
    itemLabel: json['itemLabel'],
    itemCount: json['itemCount']
  );
}

class EarlyWarning {
  String? reportName;
  int? riskScore;
  String? version;
  String? publishAt;
  String? description;
}

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

class FaqElem {
  FaqElem({
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;
}