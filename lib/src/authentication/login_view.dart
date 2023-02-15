import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:decyfir/src/authentication/reset_password.dart';
import 'package:decyfir/src/authentication/login_controller.dart';
import 'package:decyfir/src/authentication/login_service.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final LoginController controller = LoginController(LoginService());

  @override
  Widget build(BuildContext context) {
    final loginKey = GlobalKey<FormState>();

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
                              key: loginKey,
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
                                    onSaved: (value) =>
                                        controller.setUsername = value.toString(),
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
                                    onSaved: (value) => controller.setPassword = value.toString(),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      loginKey.currentState?.save();
                                      controller.serviceLogin();
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
