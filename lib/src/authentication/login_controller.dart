import 'package:decyfir/src/authentication/login_service.dart';
import 'package:flutter/cupertino.dart';

class LoginController with ChangeNotifier {
  LoginController(this._loginService);
  
  final LoginService _loginService;

  late String _username;
  late String _password;

  String get username => _username;
  String get password => _password;

  set username(username) => _username;
  set password(password) => _password;

  void serviceLogin() async {
    await _loginService.performLoginWithoutToken(username, password);
    notifyListeners();
  }

}