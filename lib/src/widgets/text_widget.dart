import 'package:flutter/material.dart';
import '../common/constants.dart';

Widget getTextFieldLight(
    double width, TextEditingController controller, String hintTxt,
    {bool center = true,
    bool obscure = false,
    Function(String)? onChanged,
    bool enabled = true}) {
  return Container(
    width: width,
    height: 50,
    child: TextField(
      controller: controller,
      obscureText: obscure,
      enabled: enabled,
      onChanged: onChanged != null ? onChanged : null,
      textAlign: center ? TextAlign.center : TextAlign.start,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        contentPadding: EdgeInsets.only(top: 6, left: center ? 0 : 16),
        hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.7,
              color: Color(0xFFD6BBFB),
            ),
            borderRadius: BorderRadius.circular(8.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              width: .7,
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        hintText: hintTxt,
        labelText: '',
      ),
    ),
  );
}

Widget getTextWidget(
        {TextEditingController? controller,
        String? hintTxt,
        String? labelTxt}) =>
    TextFormField(
      keyboardType: TextInputType.text,
      initialValue: ' ',
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.7),
            ),
            borderRadius: BorderRadius.circular(8.0)),
        labelStyle: TextStyle(
            color: Constants.black, fontWeight: FontWeight.bold, fontSize: 18),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.7),
            ),
            borderRadius: BorderRadius.circular(8.0)),
        hintText: hintTxt,
        labelText: labelTxt,
      ),
    );

Widget getInputTextWidget(
        {TextEditingController? controller,
        String? hintTxt,
        String? labelTxt,
        String? validatorTxt,
        required Function onSaved}) =>
    TextFormField(
      keyboardType: hintTxt == 'Password'
          ? TextInputType.visiblePassword
          : TextInputType.text,
      obscureText: hintTxt == 'Password' ? true : false,
      initialValue: controller == null ? '' : null,
      controller: controller,
      validator: (value) {
        return (value != null && value != '') ? validatorTxt : '';
      },
      onSaved: (value) => onSaved(value),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white.withOpacity(.7), width: .2),
            borderRadius: BorderRadius.circular(8.0)),
        labelStyle: TextStyle(
            color: Constants.black, fontWeight: FontWeight.w400, fontSize: 16),
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white.withOpacity(.7), width: .2),
            borderRadius: BorderRadius.circular(8.0)),
        hintText: hintTxt,
        labelText: labelTxt,
      ),
    );

class PasswordTextInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintTxt;
  final String? labelTxt;
  final bool center;
  final String? validatorTxt;
  final Function? onSaved;
  final double? width;
  final Function(String)? onChanged;

  PasswordTextInput(
      {required this.hintTxt,
      this.controller,
      this.labelTxt,
      this.onChanged,
      this.width,
      this.onSaved,
      this.center = false,
      this.validatorTxt});
  @override
  _PasswordTextInputState createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  bool obscure = true;

  toggle() {
    obscure = !obscure;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscure,
        onChanged: widget.onChanged != null ? widget.onChanged : null,
        initialValue: widget.controller == null ? '' : null,
        controller: widget.controller,
        textAlign: widget.center ? TextAlign.center : TextAlign.start,
        validator: (value) {
          return (value != null && value != '') ? widget.validatorTxt : '';
        },
        onSaved: (value) => widget.onSaved!(value),
        decoration: InputDecoration(
          suffixIcon: obscure
              ? GestureDetector(
                  onTap: toggle,
                  child: Container(
                      width: 60,
                      child: Center(
                          child: Icon(Icons.visibility_off,
                              color: Colors.grey.shade400))))
              : GestureDetector(
                  onTap: toggle,
                  child: Container(
                      width: 60,
                      child: Center(
                          child: Icon(Icons.visibility,
                              color: Colors.grey.shade400)))),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(8.0)),
          contentPadding: EdgeInsets.only(top: 6, left: widget.center ? 0 : 16),
          hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFFD6BBFB),
              ),
              borderRadius: BorderRadius.circular(8.0)),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                width: .7,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(8.0)),
          hintText: widget.hintTxt,
          labelText: '',
        ),
      ),
    );
  }
}
