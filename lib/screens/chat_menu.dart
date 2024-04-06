// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/navigationBar.dart';
import 'package:vanilla_shake/components/top_stories.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Chat_MENU extends StatefulWidget {
  const Chat_MENU({Key? key}) : super(key: key);

  @override
  State<Chat_MENU> createState() => _Chat_MENUState();
}

class _Chat_MENUState extends State<Chat_MENU> {
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
          Headline(headline: 'Top stories', paddingHorizontal: 30.w),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: 380.w,
                  height: 120.h,
                  color: Color(0xFFFFF9F0),
                ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Top_Stories(),
                     Top_Stories(),
                     Top_Stories(),
                     Top_Stories(),
                   ],
                 ),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
