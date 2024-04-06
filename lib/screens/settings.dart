// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/location.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

double height = 120.0;
var selectedRange = RangeValues(18, 90);
bool isSwitched = false;
bool isSwitched1 = false;
bool isSwitched2 = false;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 310.w),
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
              Headline(headline: 'Settings',paddingHorizontal: 18.0.w,),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Flexible(child: LocationScreen()),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Maximum distance",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    Text(
                      '${height.round()}' ' km',
                      style:
                          TextStyle(fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                    ),
                  ],
                ),
              ),
              Slider(
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Color(0xFFB4B4B4),
                  thumbColor: Colors.white,
                  value: height,
                  max: 220.0,
                  min: 1.0,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  }),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show me for",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      "Male",
                      style:
                          TextStyle(fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age range",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    Text(
                      '${selectedRange.start.toInt()}'
                      '-'
                      '${selectedRange.end.toInt()}',
                      style:
                          TextStyle(fontSize: 15.sp, color: Color(0xFF8D8D8D)),
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: 1,thumbColor: Colors.black),
                child:RangeSlider(
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Color(0xFFB4B4B4),
                  max: 100,
                  min: 10,
                  values: selectedRange,
                  onChanged: (RangeValues newRange) {
                    setState(() {
                      selectedRange = newRange;
                    });
                  }), ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Global",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        focusColor: Colors.lightGreen,
                        activeTrackColor: Theme.of(context).primaryColor,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Color(0xFFB4B4B4),
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        })
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text(
                  'The global mode turns on as soon as the profiles in this location run out.',
                  style: TextStyle(fontSize: 13.sp, color: Color(0xFF8D8D8D)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show me with profile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        focusColor: Colors.lightGreen,
                        activeTrackColor: Theme.of(context).primaryColor,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Color(0xFFB4B4B4),
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(() {
                            isSwitched1 = value;
                          });
                        })
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Show me only with sticker",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        focusColor: Colors.lightGreen,
                        activeTrackColor: Theme.of(context).primaryColor,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Color(0xFFB4B4B4),
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                          });
                        })
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                child: Text(
                  'You can turn off the profile function and only turn on the sticker system. All participants will see and find you only by the sticker.',
                  style: TextStyle(fontSize: 13.sp, color: Color(0xFF8D8D8D)),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profile management",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(elevation: 0.0),
                      child: Row(
                        children: [
                          Text("All settings",style: TextStyle(color:Color(0xFFB4B4B4),),),
                          Icon(Icons.chevron_right,color:Color(0xFFB4B4B4) ,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
