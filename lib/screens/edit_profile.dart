// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/navigationBar.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NaviBar(),
      body: ListView(
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Headline(headline: 'Edit profile', paddingHorizontal: 30.w),
          Stack(
            children: [
              Container(
                width: 380.w,
                height: 550.h,
                color: Color(0xFFFFF9F0),
              ),
              Positioned(
                  top: 50.h,
                  left: 110.w,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(2, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        AppAssets.girl_1,
                      ))),
              Positioned(
                top: 170.h,
                left: 240.w,
                child: Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35.r)),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.pink,
                          size: 20,
                        ))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 190.h,left: 30.w,right: 30.w),
                child: Column(
                  children: [
                    SizedBox(height: 40.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                        ),
                        Text(
                          'Monica Geller',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                        ),
                        Text(
                          'monica_geller@gmail.com',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phone',
                          style: TextStyle(
                              fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                        ),
                        Text(
                          '+095 1232 4545 0206',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date of birth ',
                          style: TextStyle(
                              fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                        ),
                        Text(
                          '16.06.1955',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
