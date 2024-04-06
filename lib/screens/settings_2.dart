// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/settingsButton.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Settings_2 extends StatefulWidget {
  const Settings_2({Key? key}) : super(key: key);

  @override
  _Settings_2State createState() => _Settings_2State();
}

class _Settings_2State extends State<Settings_2> {
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
              SettingsButton(onPressed: (){}, label: 'Account management', imageIcon: AppAssets.Profile_1),
              SettingsButton(onPressed: (){}, label: 'Confidentiality', imageIcon: AppAssets.Confid),
              SettingsButton(onPressed: (){}, label: 'Language', imageIcon: AppAssets.Lang),
              SettingsButton(onPressed: (){}, label: 'Your history', imageIcon: AppAssets.Story),
              SettingsButton(onPressed: (){}, label: 'Stickers', imageIcon: AppAssets.Smile),
              SettingsButton(onPressed: (){}, label: 'Notifications', imageIcon: AppAssets.Notice),
              SettingsButton(onPressed: (){}, label: 'Privacy policy', imageIcon: AppAssets.Note),
              SettingsButton(onPressed: (){}, label: 'QR code', imageIcon: AppAssets.QR),
              SettingsButton(onPressed: (){}, label: 'Favorites', imageIcon: AppAssets.Star),
              SettingsButton(onPressed: (){}, label: 'Video settings', imageIcon: AppAssets.Cam),
              SettingsButton(onPressed: (){}, label: 'Buy Platinum account ', imageIcon: AppAssets.Card),
              SettingsButton(onPressed: (){}, label: 'Clear cache', imageIcon: AppAssets.Trash),
            ],
          ),
        ],
      ),
    );
  }
}
