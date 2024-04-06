// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/settingsButton.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Settings_3 extends StatefulWidget {
  const Settings_3({Key? key}) : super(key: key);

  @override
  _Settings_3State createState() => _Settings_3State();
}

class _Settings_3State extends State<Settings_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 300.w),
                child: InkWell(
                  child: Text(
                    'Done',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                ),
              ),
              Headline(headline: 'Settings',paddingHorizontal: 23.0.w,),
              SizedBox(height: 20.h,),
              SettingsButton(onPressed: (){}, label: 'Settings', imageIcon: AppAssets.Setting),
              SettingsButton(onPressed: (){}, label: 'Support Center', imageIcon: AppAssets.Info),
              SettingsButton(onPressed: (){}, label: 'Login out', imageIcon: AppAssets.Log),

            ],
          ),
        ],
      ),
    );
  }
}
