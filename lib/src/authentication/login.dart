import 'dart:convert';
import 'dart:ui';

import 'package:decyfir/src/alert_center/alert_center.dart';
import 'package:decyfir/src/authentication/reset_password.dart';
import 'package:decyfir/src/common/notification_setup.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:decyfir/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class Login extends StatefulWidget {
  final SettingsController controller;

  const Login({super.key, required this.controller});

  static const routeName = '/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  final _loginKey = GlobalKey<FormState>(), _tokenKey = GlobalKey<FormState>();
  String _username = '', _password = '', _authToken = '';

  @override
  void initState() {
    super.initState();
    SharedPreferencesHandler().getString('authToken').then((value) async {
      if (value.isNotEmpty) {
        Subroutines.getAccountData(value).then((value) async {
          if (value.statusCode == 200) {
            Subroutines.getNotification(
                await NotificationSetup.getNotificationPlugin());
            // ignore: use_build_context_synchronously
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => AlertCenter(
                          username: _username,
                          controller: widget.controller,
                        )));
          } else {
            String username =
                await SharedPreferencesHandler().getString('username');
            String password =
                await SharedPreferencesHandler().getString('password');
            Subroutines.login(username, password).then((loginResp) async {
              switch (loginResp.statusCode) {
                case 200:
                  SharedPreferencesHandler().setString(
                      'authToken', json.decode(loginResp.body)['id_token']);
                  Subroutines.getNotification(
                      await NotificationSetup.getNotificationPlugin());
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AlertCenter(
                                username: username,
                                controller: widget.controller,
                              )));
                  break;
                case 401:
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login(controller: widget.controller)));
                  break;
                case 403:
                Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login(controller: widget.controller)));
                  break;
                default:
              }
            });
          }
        });
      }
    });
  }

  void _performLoginWithToken(context) async {
    dynamic response =
        await Subroutines.login(_username, _password, token: _authToken);
    switch (response.statusCode) {
      case 200:
        SharedPreferencesHandler()
            .setString('authToken', json.decode(response.body)['id_token'])
            .then((value) async {
          Subroutines.getNotification(
              await NotificationSetup.getNotificationPlugin());
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => AlertCenter(
                      username: _username, controller: widget.controller)));
        });
        break;
      case 401:
        print(response.reasonPhrase);
        print("Incorrect password or token");
        break;
      case 403:
        print(response.reasonPhrase);
        print("Invalid token");
        break;
      default:
        print('${response.statusCode} : ${response.reasonPhrase}');
    }
  }

  //Stage 1 - Perform login without token(token check)
  void _performLoginWithoutToken(context) async {
    Subroutines.login(_username, _password).then((value) {
      switch (value.statusCode) {
        case 200:
          _storeAuthAndTransit(value);
          break;
        case 403:
          print(value.reasonPhrase);
          requestAuthenticatorToken();
          break;
        case 401:
          print(value.reasonPhrase);
          print("Incorrect password");
          break;
        default:
          print(value.reasonPhrase);
      }
    });
  }

  void requestAuthenticatorToken() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Form(
            key: _tokenKey,
            child: Container(
              padding: MediaQuery.of(context).viewInsets,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: Text('Enter your authentication token',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Row(
                      children: [
                        Expanded(
                          //width: width * 0.7,
                          child: TextFormField(
                            onSaved: (value) {
                              setState(() {
                                _authToken = value.toString();
                              });
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            print('Auth version got called');
                            _tokenKey.currentState?.save();
                            _performLoginWithToken(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFF7F56D9),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: const Text('Submit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  void _storeAuthAndTransit(dynamic response) {
    SharedPreferencesHandler().setString('username', _username);
    SharedPreferencesHandler().setString('password', _password);
    SharedPreferencesHandler()
        .setString('authToken', json.decode(response.body)['id_token'])
        .then((value) async {
      Subroutines.getNotification(
          await NotificationSetup.getNotificationPlugin());
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => AlertCenter(
                    username: _username,
                    controller: widget.controller,
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ScaffoldMessenger(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/cyfirma_logo_splash.png'))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.black12)),
                height: height,
                width: width,
                margin: const EdgeInsets.fromLTRB(20, 30, 20, 50),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          height: 60,
                          width: width,
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                          margin: const EdgeInsets.only(bottom: 60, top: 10),
                          child: Image.asset('assets/images/decyfir_logo.png',
                              fit: BoxFit.fitHeight),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: Form(
                              key: _loginKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Welcome',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                          color: Colors.black)),
                                  const SizedBox(height: 5),
                                  const Text(
                                      'Please sign in using your credentials provided',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                          color: Colors.black54)),
                                  const SizedBox(height: 15),
                                  const Text('Username*',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.w500)),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.5,
                                                color: Colors.black87)),
                                        focusColor: Colors.blueGrey,
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.blueGrey))),
                                    style:
                                        const TextStyle(color: Colors.blueGrey),
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: Subroutines.validateEmail,
                                    onSaved: (value) =>
                                        _username = value.toString(),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text('Password*',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.w500)),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.5,
                                                color: Colors.black87)),
                                        focusColor: Colors.blueGrey,
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.blueGrey))),
                                    obscureText: true,
                                    style:
                                        const TextStyle(color: Colors.blueGrey),
                                    onSaved: (value) =>
                                        _password = value.toString(),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      _loginKey.currentState?.save();
                                      _performLoginWithoutToken(context);
                                    },
                                    child: Opacity(
                                      opacity: 1,
                                      child: Container(
                                        height: 50,
                                        width: width / 1.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: const Color(0xFF7F56D9)),
                                        child: const Center(
                                          child: Text(
                                            'Proceed',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (() => Navigator.restorablePushNamed(
                                        context, ResetPassword.routeName,
                                        arguments: true)),
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('forgot password?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xFF7F56D9))),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
