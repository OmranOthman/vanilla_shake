// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Top_Stories extends StatelessWidget {
  const Top_Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 88.w,
            height: 88.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
                border:
                Border.all(width: 2.5.w, color: Color(0xFFE24E59))),
          ),
          Container(
            width: 80.w,
            height: 80.h,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AppAssets.girl_1,
                    )),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
                border:
                Border.all(width: 4.w, color: Colors.transparent)),
          ),
          Container(
            width: 32.w,
            height: 20.h,
            margin: EdgeInsets.only(top: 58.h,left: 45.w),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(30.r)),
            child: Text('3.2K',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 90.h,left: 30.w),
            child: Text('Rose'),
          ),
        ],
      ),
    );
  }
}
