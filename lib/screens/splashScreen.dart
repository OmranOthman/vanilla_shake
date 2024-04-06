// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';
import 'package:vanilla_shake/screens/onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _WelcomeState();
}

class _WelcomeState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Onbording(),
      )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Image(
        image: AssetImage(AppAssets.logo),
      ),
    ));
  }
}
