// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, camel_case_types, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/buttonContinue.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/toggleButtonWidget.dart';
import 'package:vanilla_shake/screens/signup.dart';

class My_interests extends StatefulWidget {
  const My_interests({Key? key}) : super(key: key);

  @override
  _My_interestsState createState() => _My_interestsState();
}

class _My_interestsState extends State<My_interests> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Headline(headline: 'My interests',paddingHorizontal: 0.0.w,),
                    Text(
                      'STEP 3/3',
                      style: TextStyle(fontSize: 13.sp, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                  ToggleButtonWidget(text: '     TV show     ',),
                  SizedBox(width: 17.w,),
                  ToggleButtonWidget(text: '     music     ',),
                    SizedBox(width: 17.w,),
                  ToggleButtonWidget(text: '     books     ',),
                ],),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                  ToggleButtonWidget(text: '     sport     ',),
                  SizedBox(width: 17.w,),
                  ToggleButtonWidget(text: '     shopping     ',),
                ],),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    ToggleButtonWidget(text: '     movie     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     games     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     drinks     ',),
                  ],),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    ToggleButtonWidget(text: '     social N.     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     family     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     pets     ',),
                  ],),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    ToggleButtonWidget(text: '     politics     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     dance     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     bars     ',),
                  ],),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    ToggleButtonWidget(text: '     travel     ',),
                    SizedBox(width: 17.w,),
                    ToggleButtonWidget(text: '     art     ',),
                  ],),
                SizedBox(
                  height: 140.h,
                ),

                ButtonContinue(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup(),));},),
              ],
            ),
          ],
        ),
      ),
    );
  }
  }
