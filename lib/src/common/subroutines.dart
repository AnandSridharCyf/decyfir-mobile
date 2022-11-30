
import 'dart:async';
import 'dart:convert';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

class Subroutines {
  static String buildUrl(String path) {
    var apiPrefix = '';
    for (var item in Values.CORE) {
      if (item == path) {
        apiPrefix = '/core';
      }
    }
    for (var item in Values.ORG) {
      if (item == path) {
        apiPrefix = '/org';
      }
    }
    for (var item in Values.CYBEREDU) {
      if (item == path) {
        apiPrefix = '/cyberedu';
      }
    }
    return '$apiPrefix/api/$path';
  }

  static Future<http.Response> login(String username, String password) async {
    Map<String, String> payload = {
      "username": username,
      "password": password
    };
    Uri path = Uri.https(
        Values.PREFIXES[Values.CURRENT_BUILD] + _returnBaseUrl(),
        buildUrl(Values.API_PATHS['login'].toString()));
   print('Logging in at path: $path with ${payload.toString()}');
    return http
        .post(path,
            headers: {
              "Accept": "application/json",
              'Content-Type': 'application/json',
            },
            body: jsonEncode(payload))
        .catchError((onError) {
    //  print(onError.toString());
    });
  }

  //qadecyfir.cyfirma.com/api/account

  static Future<http.Response> getAccountData(String token) async {
    Uri path = Uri.https(
        Values.PREFIXES[Values.CURRENT_BUILD] + _returnBaseUrl(),
        buildUrl(Values.API_PATHS['account'].toString()));
    //print('Getting Account data from path: $path');
    return _getCall(token, path);
  }

  //qadecyfir.cyfirma.com/core/api/online-reports/dasboard/list?reportType=Early%20Warnings&page=0&size=20&orgId=1
  static Future<http.Response> getEarlyWarning(String token) async {
    Uri path = Uri.https(
      Values.PREFIXES[Values.CURRENT_BUILD] + _returnBaseUrl(),
      buildUrl(Values.API_PATHS['online_report_list'].toString()), {
        "reportType" : "Early Warnings",
        "orgId" : '1',
        "page" : "0",
        "size" : '20',
      }
    );
    //print(path.toString());
    return _getCall(token, path);
  }

  //alerts/v2/listing?orgId=1&alertType=AttackSurface&size=20&page=0&sort=createdDate,DESC
  static Future<http.Response> getLatestAlerts(String token, String alertType, bool sort) async {
    String sortDir = sort ? 'ASC' : 'DESC';
    Uri path = Uri.https(
      Values.PREFIXES[Values.CURRENT_BUILD] + _returnBaseUrl(),
      buildUrl(Values.API_PATHS['latest_alerts'].toString()), {
        "orgId" : '1',
        "alertType" : alertType,
        "size" : '40',
        "sort" : "createdDate,$sortDir"
      }
    );
    return _getCall(token, path);
  }

  static Future<http.Response> _getCall(String token, Uri path) async {
    //NetworkHandler.isOnlineWithToast();
    //print(token);
    return http.get(
      path,
      headers: {
        "Accept": "application/json",
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    ).catchError((onError) {
      //print(onError.toString());
    }).then((http.Response res){
      if(res.statusCode == 401){
        //sheetNotifier.value = 97;
        //sheetNotifier.notifyListeners();
      }
      return res;
    });
  }

  static String _returnBaseUrl() {
    return Values.CURRENT_BUILD < 2 ? Values.PROD_URL : Values.STAGING_URL;
  }

  static String getRiskLevel(int value) {
    if(value > Values.CRITICAL_THRESHOLD) {
      return 'Critical';
    } else if(value > Values.HIGH_THRESHOLD) {
      return 'High';
    } else if(value > Values.MEDIUM_THRESHOLD) {
      return 'Medium';
    } else {
      return 'Low';
    }
  }

  static List filterChosen(List input) {
    List outList = [];
    List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
    for (var e in input) {
      if(e['riskScore'] > Values.MEDIUM_THRESHOLD && riskLevelsSelected.contains(getRiskLevel(e['riskScore']))) outList.add(e);
    }
    return outList;
  }

  static List filterActive(List input, List<bool> active) {
    List outList = [];
    for(var e in input) {
      if(active[0] && e['riskScore'] > Values.CRITICAL_THRESHOLD) outList.add(e);
      else if(active[1] && e['riskScore'] > Values.HIGH_THRESHOLD && e['riskScore'] <= Values.CRITICAL_THRESHOLD) outList.add(e);
      else if(active[2] && e['riskScore'] > Values.MEDIUM_THRESHOLD && e['riskScore'] <= Values.HIGH_THRESHOLD) outList.add(e);
    }
    return outList;
  }

  static List filterCategories(List input, String category, String subCategory) {
    List outList = [];
    for(var e in input) {
      if(category.toUpperCase() == e['type'].toUpperCase()) {
        if(subCategory.toUpperCase() == e['category'].toUpperCase()) {
          outList.add(e);
        }
      } else if(category == '' && subCategory == '') {
        outList = input;
      }
    } 
    
    //return input;
    return outList;
  }

  static List<int> generateCounts(List input) {
    List<int> outCounts = [0, 0, 0];
    for(var e in input) {
      if(e['riskScore'] > Values.CRITICAL_THRESHOLD) outCounts[0]++;
      else if(e['riskScore'] > Values.HIGH_THRESHOLD) outCounts[1]++;
      else if(e['riskScore'] > Values.MEDIUM_THRESHOLD) outCounts[2]++;
    }
    return outCounts;
  }

  static Color getRiskColor (int value) {
    if(value > Values.CRITICAL_THRESHOLD) {
      return const Color(0xFFCE1126);
    } else if(value > Values.HIGH_THRESHOLD) {
      return const Color(0xFFFF8000);
    } else if(value > Values.MEDIUM_THRESHOLD) {
      return const Color(0xFFFDB71B);
    } else {
      return const Color(0xFF0F7DC2);
    }
  }

  static String getDate(String inVal) {
    String year = inVal.substring(0, 4),
        month = inVal.substring(5, 7),
        day = inVal.substring(8, 10),
        monthStr = '';
    switch (int.parse(month)) {
      case 1:
        monthStr = 'Jan';
        break;
      case 2:
        monthStr = 'Feb';
        break;
      case 3:
        monthStr = 'Mar';
        break;
      case 4:
        monthStr = 'Apr';
        break;
      case 5:
        monthStr = 'May';
        break;
      case 6:
        monthStr = 'Jun';
        break;
      case 7:
        monthStr = 'Jul';
        break;
      case 8:
        monthStr = 'Aug';
        break;
      case 9:
        monthStr = 'Sept';
        break;
      case 10:
        monthStr = 'Oct';
        break;
      case 11:
        monthStr = 'Nov';
        break;
      case 12:
        monthStr = 'Dec';
        break;
    }

    return '$day-$monthStr-$year';
  }

  static String getDateTime(String inVal) {
    int hr = int.parse(inVal.substring(11, 13));
    String year = inVal.substring(0, 4),
        month = inVal.substring(5, 7),
        day = inVal.substring(8, 10),
        min = inVal.substring(14, 16),
        monthStr = '',
        hrStr = (hr > 12 ? (hr - 12) : hr).toString(),
        addStr = hr > 12 ? 'PM' : 'AM';
    switch (int.parse(month)) {
      case 1:
        monthStr = 'Jan';
        break;
      case 2:
        monthStr = 'Feb';
        break;
      case 3:
        monthStr = 'Mar';
        break;
      case 4:
        monthStr = 'Apr';
        break;
      case 5:
        monthStr = 'May';
        break;
      case 6:
        monthStr = 'Jun';
        break;
      case 7:
        monthStr = 'Jul';
        break;
      case 8:
        monthStr = 'Aug';
        break;
      case 9:
        monthStr = 'Sept';
        break;
      case 10:
        monthStr = 'Oct';
        break;
      case 11:
        monthStr = 'Nov';
        break;
      case 12:
        monthStr = 'Dec';
        break;
    }

    return '$monthStr $day, $year $hrStr:$min $addStr';
  }

  static void getNotification(FlutterLocalNotificationsPlugin plugin) async {
    SharedPreferencesHandler().getString('authToken').then((value)  => generateListAndShowNotification(value, plugin));
  }

  static void generateListAndShowNotification(String token, FlutterLocalNotificationsPlugin plugin) async {
    var alertsResp = await Subroutines.getLatestAlerts(token, "DigitalRisk", false);
    var alertsData = [];
    List alerts = [];
    if(alertsResp.statusCode == 200) {
      alertsData = json.decode(alertsResp.body)['Alerts'];
      for(var e in alertsData) {
        if(e['riskScore'] > 8) alerts.add(e);
      }
    }
    alertsResp = await Subroutines.getLatestAlerts(token, "AttackSurface", false);
    if(alertsResp.statusCode == 200) {
      alertsData = json.decode(alertsResp.body)['Alerts'];
      for(var e in alertsData) {
        if(e['riskScore'] > 8) alerts.add(e);
      }
    }
    alertsResp = await Subroutines.getLatestAlerts(token, "Vulnerability", false);
    if(alertsResp.statusCode == 200) {
      alertsData = json.decode(alertsResp.body)['Alerts'];
      for(var e in alertsData) {
        if(e['riskScore'] > 8) alerts.add(e);
      }
    }
    alertsResp = await Subroutines.getEarlyWarning(token);
    if(alertsResp.statusCode == 200) {
      alertsData = json.decode(alertsResp.body);
      print('Came to early warnings');
      for(var e in alertsData) {
        if(e['riskScore'] > 8) alerts.add(e);
      }
    }
    // if(alerts.isNotEmpty) {
    //   String date = Subroutines.getDate(alerts[0]['createdDate']);
    //   String title = '$date - ${alerts[0]['title']}';
    //   await plugin.show(0, title, alerts[0]['description'], Values.notificationDetails, payload: 'item x');
    // };
    if(alerts.isNotEmpty) {
      int index = 0;
      for(var e in alerts) {
        index++;
        String date = Subroutines.getDate(e['createdDate']);
        //String title = '$date - ${e['title']}';
        String title = e['title'] ?? e['reportName'];
        bool isAlert = e['title'] != null ? true : false;
        // if(date == getDate(DateTime.now().toString())) {
        //   await plugin.show(index, title, e['description'], Values.notificationDetails,payload: isAlert.toString());
        // }
        await plugin.show(index, date, title, Values.notificationDetails,payload: isAlert.toString());
        //await plugin.show(index, title, e['description'], Values.notificationDetails,payload: 'item x');
      }
    }
  }
}

class Values {
  static const WATERMARK = '©CYFIRMA 2020, ALL RIGHTS ARE RESERVED.';
  static const int CURRENT_BUILD = 0;
  // static const int DEFAULT_ORG = 63;
  static const PREFIXES = ["qadecyfir."];
  static const String STAGING_URL = "cyfirma.com";
  static const String PROD_URL = "cyfirma.com";

  static const int CRITICAL_THRESHOLD = 8;
  static const int HIGH_THRESHOLD = 5;
  static const int MEDIUM_THRESHOLD = 2;

  static const AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails('your channel id', 'your channel name',
        channelDescription: 'your channel description',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');
  static const NotificationDetails notificationDetails = NotificationDetails(android: Values.androidNotificationDetails);

  static const CORE = [
    "countries/list",
    "defnce/dr/dataleak",
    "defnce/sa/cyber-attack",
    'defnce/sa/phishing',
    "defnce/user-views",


    "online-reports/dasboard/list",
    "alerts/v2/listing"
  ];
  static const ORG = ["industries"];
  static const CYBEREDU = ["version"];
  static const Map<String, String> API_PATHS = {
    "data_leak": "defnce/dr/dataleak",
    "data_leak-count": "defnce/dr/dataleak-count",
    "register": "register",
    "password_reset_init": 'account/reset-password/init',
    "resend_activation": "account/activation-mail/resend",
    "password_change": 'account/change-password',
    "get_industries": 'user-industries/users',
    "get_geography": 'user-geos/users',
    "all_industries": 'industries',
    "all_countries": "countries/list",
    "user_geo": "user-geos",
    "user_industry": "user-industries",
    "user_industry_bulk": "user-industries/bulk",
    "cyber_attacks": "defnce/sa/cyber-attack",
    'phishing': 'defnce/sa/phishing',
    "update_viewed": "defnce/user-views",
    "version": "app-versions/platform",

    "account": "account",
    "login": "authenticate",
    "online_report_list" : "online-reports/dasboard/list",
    "latest_alerts" : "alerts/v2/listing"
  };
}