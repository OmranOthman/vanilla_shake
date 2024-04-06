// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Headline extends StatelessWidget {
  Headline({required this.headline,required this.paddingHorizontal});
  String headline;
  double paddingHorizontal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),child: Row(
      children: [
        Text(
          headline,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24.sp),
        ),
      ],
    ),);
  }
}
