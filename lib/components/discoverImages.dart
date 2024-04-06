// ignore_for_file: prefer_const_constructors, empty_constructor_bodies, must_be_immutable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverImages extends StatelessWidget {
   DiscoverImages({
    required this.imageDiscover,
    required this.nameDiscover,
    required this.professionDiscover,
    required this.distanceDiscover,
  });

  var imageDiscover;
  var nameDiscover;
  var professionDiscover;
  var distanceDiscover;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 226.0.h,
            width: 160.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Image.asset(imageDiscover)),
        Positioned(
          top: 142.h,
          child: Container(
            height: 80.0.h,
            width: 160.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: Colors.black38,
            ),
          ),
        ),
        Positioned(
          top: 140.h,
          child: Column(
            children: [
              Text(
                nameDiscover,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp),
              ),
              Text(
                professionDiscover,
                style: TextStyle(color: Colors.white60, fontSize: 14.sp),
              ),
              Text(
              distanceDiscover,
                style: TextStyle(color: Colors.white60, fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
