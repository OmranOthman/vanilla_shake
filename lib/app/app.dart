// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/screens/discover.dart';
import 'package:vanilla_shake/screens/discover_profiles.dart';
import 'package:vanilla_shake/screens/edit_profile.dart';
import 'package:vanilla_shake/screens/profile_pic.dart';
import 'package:vanilla_shake/screens/settings.dart';
import 'package:vanilla_shake/screens/signup.dart';
import 'package:vanilla_shake/screens/signup_2.dart';
import 'package:vanilla_shake/components/location.dart';

import '../screens/chat_menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 750),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            sliderTheme: SliderThemeData(thumbColor: Colors.white),
            dividerTheme: DividerThemeData(
              space: 15,
              color: Colors.black12,
              thickness: 1,
            ),
            buttonTheme: ButtonThemeData(),
            primaryColor: const Color(0xFFE24E59),
            appBarTheme: const AppBarTheme(
              color: Colors.transparent,
              elevation: 0.0,
            ),
          ),
          home: Chat_MENU(),
        );
      },
    );
  }
}
