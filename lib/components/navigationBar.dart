// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';
class NaviBar extends StatefulWidget {
  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      destinations: [
        NavigationDestination(
            icon: IconButton(onPressed: () {  }, icon:Image.asset( AppAssets.Search,color: Colors.black,),), label: ''),
        NavigationDestination(
            icon: IconButton(onPressed: () {  }, icon:Image.asset( AppAssets.Heart,color: Colors.black,),), label: ''),
        NavigationDestination(
            icon: IconButton(onPressed: () {  }, icon:Image.asset( AppAssets.Home,color: Colors.black,),), label: ''),
        NavigationDestination(
            icon: IconButton(onPressed: () {  }, icon:Image.asset( AppAssets.Chat,color: Colors.black,),), label: ''),
        NavigationDestination(
            icon: IconButton(onPressed: () {  }, icon:Image.asset( AppAssets.Profile_2,color: Colors.black,),), label: ''),
      ],
      indicatorColor: Colors.transparent,
      animationDuration: Duration( milliseconds:1000),
    );
  }
}
