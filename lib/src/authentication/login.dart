import 'dart:convert';
import 'dart:ui';

import 'package:decyfir/src/alert_center/alert_center.dart';
import 'package:decyfir/src/common/notification_setup.dart';
import 'package:decyfir/src/common/shared_prefs_handler.dart';
import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const routeName = '/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _loading = false;
  final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  final _loginKey = GlobalKey<FormState>();
  String _username = '', _password = '', _authToken = '';
  bool _eulaAccepted = false, _authTokenProvided = false;

  @override
  void initState() {
    super.initState();
    SharedPreferencesHandler().getString('authToken').then((value) async {
      if (value != '') {
        Subroutines.getNotification(
            await NotificationSetup.getNotificationPlugin());
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => AlertCenter(username: _username)));
      }
    });
  }

  void _performLoginWithToken(context) async {
    dynamic response =
        await Subroutines.login(_username, _password, token: _authToken);
    switch (response.statusCode) {
      case 200:
        //final res = json.decode(response.body);
        SharedPreferencesHandler()
            .setString('authToken', json.decode(response.body)['id_token'])
            .then((value) async {
          Subroutines.getNotification(
              await NotificationSetup.getNotificationPlugin());
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => AlertCenter(username: _username)));
        });
        break;
      default:
        //final res = json.decode(response.body);
        if (response.statusCode == 401) {
          if (json.decode(response.body)['detail'].contains('not activated')) {
            print('Not activated account');
          } else {
            _scaffoldKey.currentState?.showSnackBar(const SnackBar(
                content: Text('Email Id or Password incorrect')));
          }
        }
    }
  }

  //Stage 1 - Perform login without token(token check)
  void _performLoginWithoutToken(context) async {
    Subroutines.login(_username, _password).then((value) {
      switch (value.statusCode) {
        case 200:
          _storeAuthAndTransit(value);
          break;
        default:
          requestAuthenticatorToken();
      }
    });
  }

  void requestAuthenticatorToken() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Text('Enter your authentication token',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Row(
                    children: [
                      Expanded(
                        //width: width * 0.7,
                        child: TextFormField(
                          onSaved: (value) {
                            _authToken = value.toString();
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          _authTokenProvided = true;
                          if (!_loading) {
                            _loginKey.currentState?.save();
                            _performLoginWithToken(context);
                          }
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
          );
        });
  }

  void _storeAuthAndTransit(dynamic response) {
    SharedPreferencesHandler().setString('username', _username);
    SharedPreferencesHandler()
        .setString('authToken', json.decode(response.body)['id_token'])
        .then((value) async {
      Subroutines.getNotification(
          await NotificationSetup.getNotificationPlugin());
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => AlertCenter(username: _username)));
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
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Form(
                              key: _loginKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Welcome',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30)),
                                  const SizedBox(height: 5),
                                  const Text(
                                      'Please sign in using your credentials provided',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black45)),
                                  const SizedBox(height: 15),
                                  Text('Username*',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w500)),
                                  TextFormField(
                                    onSaved: (value) =>
                                        _username = value.toString(),
                                  ),
                                  //getTextFieldLight(width, TextEditingController(), 'Enter your email', center: false, onChanged: (value) => _username = value),
                                  const SizedBox(height: 20),
                                  Text('Password*',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w500)),
                                  TextFormField(
                                    obscureText: true,
                                    onSaved: (value) =>
                                        _password = value.toString(),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: _eulaAccepted,
                                          onChanged: (value) => setState(() {
                                                _eulaAccepted = value!;
                                              })),
                                      const Text('Save user details')
                                    ],
                                  ),
                                  //PasswordTextInput(onChanged:(value) => _password = value, hintTxt: 'Enter your password'),
                                  const SizedBox(height: 10),
                                  // getTextFieldLight(width, _passwordController,
                                  //     'Enter your password',
                                  //     obscure: true, center: false),
                                  GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      if (!_loading) {
                                        _loginKey.currentState?.save();
                                        _performLoginWithoutToken(context);
                                      }
                                    },
                                    child: Opacity(
                                      opacity: _loading ? .5 : 1,
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
