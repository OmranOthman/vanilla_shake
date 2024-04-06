// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormField_Signup extends StatefulWidget {
  TextFormField_Signup(
      {required this.width,
      required this.height,
      required this.textAlign,
      required this.maxLength,
      required this.keyboardType,
      required this.textInputAction});

  double width;
  double height;
  int maxLength;
  var textAlign;
  var keyboardType;
  var textInputAction;


  @override
  _TextFormField_SignupState createState() => _TextFormField_SignupState();
}

class _TextFormField_SignupState extends State<TextFormField_Signup> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        maxLength: widget.maxLength,
        textAlign: widget.textAlign,
        cursorWidth: 0.5,
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: Color(0xFFFDDBDD))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(color: Colors.red)),
        ),
        style:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
      ),
    );
  }
}
