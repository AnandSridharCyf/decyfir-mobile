import 'package:decyfir/src/common/subroutines.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPassword extends StatefulWidget {
  static const routeName = '/reset_password';

  final bool isInAppCall;

  const ResetPassword({super.key, required this.isInAppCall});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _resetFormKey = GlobalKey<FormState>();
  late String _email;

  @override
  Widget build(BuildContext context) {
    void resetPassword() {
      Subroutines.resetPassword(_email).then((value) {
        if(value.statusCode == 200) {
          Navigator.pop(context);
          Fluttertoast.showToast(msg: 'If the Username/Email exist in our database, you will receive an email with instructions to reset your password!');
          
        }
      });
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        //color: Colors.white,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Theme.of(context).colorScheme.tertiary,
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        color: Colors.transparent,
                        child: Icon(Icons.cancel_outlined,
                            size: 25,
                            color:
                                Theme.of(context).colorScheme.primaryContainer),
                      ),
                    ),
                    Container(
                      width: 100,
                      alignment: Alignment.topCenter,
                      child:
                          Image.asset('assets/images/decyfir_logo_white.png'),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(80, 100, 80, 10),
                    decoration: const BoxDecoration(),
                    child: Text(
                      widget.isInAppCall ? 'Having issues with your current password?' : "Forgot your password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(80, 0, 80, 10),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'To reset your password please enter your email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  Form(
                    key: _resetFormKey,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(40),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.always,
                            validator: Subroutines.validateEmail,
                            onSaved: (newValue) => setState(() {
                              _email = newValue.toString();
                            }),
                            decoration: const InputDecoration(
                                hintText: 'Email Address'),
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            _resetFormKey.currentState?.save();
                            resetPassword();
                          }),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 15, 30, 15),
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              //alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.fromLTRB(0, 30, 40, 0),
                              child: Text('Reset'.toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.2,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
