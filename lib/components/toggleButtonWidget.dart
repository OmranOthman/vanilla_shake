// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleButtonWidget extends StatefulWidget {
  ToggleButtonWidget({required this.text});
  String text ;
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}
class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  List<bool> isSelected = [false];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      selectedColor: Colors.white,
      fillColor: Theme.of(context).primaryColor,
      borderColor: Color(0xFFFDDBDD),
      borderRadius: BorderRadius.all(
        Radius.circular(15.r),
      ),
      isSelected: isSelected,
      textStyle: TextStyle(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.bold,
      ),
      onPressed: (int index) {
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      children: [
        Text(widget.text),
      ],
    );
  }
}
