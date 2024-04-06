// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonContinue extends StatefulWidget {
  ButtonContinue({required this.onPressed});

  var onPressed;
  @override
  _ButtonContinueState createState() => _ButtonContinueState();
}
class _ButtonContinueState extends State<ButtonContinue> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: double.infinity,
      child: MaterialButton(
        onPressed: widget.onPressed,
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(
          "Continue",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
    );
  }
}
