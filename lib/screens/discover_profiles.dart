// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Discover_profiles extends StatefulWidget {
  const Discover_profiles({Key? key}) : super(key: key);

  @override
  State<Discover_profiles> createState() => _Discover_profilesState();
}

class _Discover_profilesState extends State<Discover_profiles> {
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
      body: SafeArea(
        child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Ink(
                    child: Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Ink(
                    child: Text(
                      'Nearby',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 380.w,
                    height: 700.h,
                    color: Color(0xFFFFF9F0),
                  ),
                  Positioned(
                    top: 50.h,
                    right: 25.w,
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
                      ],),
                      child: Image.asset(
                        AppAssets.Marshall,
                        height: 473.h,
                        width: 323.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 375.h,
                      left: 50.w,
                      child: Column(
                        children: [
                          Text(
                            'Marshall Eriksen',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 425.h,left: 40.w),
                    child: Wrap(
                      runSpacing: 10.0.h,
                      spacing: 10.0.w,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white),
                          child: Text(
                            '   music   ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white),
                          child: Text(
                            '   music   ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white),
                          child: Text(
                            '   music   ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white),
                          child: Text(
                            '   music   ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.white),
                          child: Text(
                            '   music   ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 490.h,
                    left: 50.w,
                    child: Row(
                      children: [
                        SizedBox(width:30.w),
                        Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.r)),
                              color: Theme.of(context).primaryColor),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                AppAssets.Chat,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(width:30.w),
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60.r)),
                              color: Colors.white
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                AppAssets.Heart,
                                color: Theme.of(context).primaryColor,
                              )),
                        ),
                        SizedBox(width:30.w),
                        Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.r)),
                              color: Theme.of(context).primaryColor),
                          child: IconButton(
                              onPressed: () {},
                              icon:Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 570.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.w),
                      child: Text(
                        'I am corporate lawyer at Goliath National Bank.\nI grown up in Minnesota. I love and care and\nconfident and extremely emotional, which I\noften gets teased for by the gang. I am very\npassionate about what I do, and care deeply for\nmy family and friends.',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
