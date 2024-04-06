// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/discoverImages.dart';
import 'package:vanilla_shake/components/navigationBar.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NaviBar(),
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
      body: ListView(
        physics:
        BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Column(
            children: [
              Column(
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Wrap(
                    runSpacing: 10.0.h,
                    spacing: 10.0.w,
                    children: [
                      DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ),
                      DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ),
                      DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ),
                      DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ), DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ),
                      DiscoverImages(
                        imageDiscover: AppAssets.Marshall,
                        nameDiscover: "Marshal",
                        professionDiscover: "lawyer",
                        distanceDiscover: '3.4km',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
