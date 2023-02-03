import 'dart:convert';

import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/cupertino.dart';

import 'early_warnings_service.dart';

class EarlyWarningsController extends ChangeNotifier {
  EarlyWarningsController(this._earlyWarningsService);

  final EarlyWarningsService _earlyWarningsService;

  bool loading = true;

  late List finalList, earlyWarningsData;
  List<String> riskLevelsSelected = ["Critical", "High", "Medium"];
  List<bool> riskLevelActive = [true, false, false];
  List<int> riskLevelCounts = [0, 0, 0];

  void getEarlyWarn() async {
    loading = true;
    notifyListeners();

    String token = await SharedPreferencesHandler().getString('authToken');
    
    SharedPreferencesHandler().getString('orgId').then((value) async {
      var earlyWarnResp = await Subroutines.getEarlyWarning(token, value);
      if (earlyWarnResp.statusCode == 200) {
        earlyWarningsData = json.decode(earlyWarnResp.body);
        loading = false;
        
        notifyListeners();
      }
    });
  }

  List updateList(List list) {
    List outList = Subroutines.filterActive(list, riskLevelActive);
    return outList;
  }

  void toggleState(int index) {
    riskLevelActive[index] = !riskLevelActive[index];
    notifyListeners();
  }

}