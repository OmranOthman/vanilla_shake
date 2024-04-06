// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';

class Profile_pic extends StatefulWidget {
  const Profile_pic({Key? key}) : super(key: key);

  @override
  _Profile_picState createState() => _Profile_picState();
}

class _Profile_picState extends State<Profile_pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
        actions: [
        Padding(padding: EdgeInsets.only(right: 10.w),
          child: InkWell(
          onTap: (){},
          child: Text(
            'Done',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
          ),
        ),)
      ],),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Column(
            children: [
              Headline(headline: 'Profile picture', paddingHorizontal: 23.0.w),
              Container(),
              Headline(headline: 'Choose your \npersonal sticker', paddingHorizontal: 23.0.w),
            ],
          ),
        ],
      ),
    );
  }
}
