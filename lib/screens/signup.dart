// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/buttonContinue.dart';
import 'package:vanilla_shake/components/headline.dart';
import 'package:vanilla_shake/components/textFormField_Signup.dart';
import 'package:vanilla_shake/core/const/app_assets.dart';
import 'package:vanilla_shake/screens/signup_2.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isConfirmPasswordVisible = false;

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
                    Headline(headline: 'Signup', paddingHorizontal: 0.0.w),
                    Text(
                      'STEP 1/3',
                      style: TextStyle(fontSize: 13.sp, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 3),
                  child: Row(
                    children: [
                      GestureDetector(
                        //onTap: _linkProfile,
                        child: Container(
                          height: 64.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 20,
                                offset: Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0.0),
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "FACEBOOK",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        // onTap: _linkProfileGmail,
                        child: Container(
                          height: 64.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 20,
                                offset: Offset(10, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(AppAssets.Google),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "GOOGLE",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Email address',
                      style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 15),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField_Signup(
                    width: 340.0.w,
                    height: 80.0.h,
                    maxLength: 50,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 15),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: Color(0xFFFDDBDD))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: BorderSide(color: Colors.red)),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
                        });
                      },
                      child: Icon(
                        isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFFFDDBDD),
                        size: 22,
                      ),
                    ),
                  ),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                  obscureText: isConfirmPasswordVisible ? false : true,
                ),
                SizedBox(
                  height: 38.h,
                ),
                Column(
                  children: [
                    Text('+ 8 characters' '                    + 1 symbols',
                        style:
                            TextStyle(color: Color(0xFF8D8D8D), fontSize: 15)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('+ 1 number' '               *get our password',
                        style:
                            TextStyle(color: Color(0xFF8D8D8D), fontSize: 15)),
                  ],
                ),
                SizedBox(
                  height: 120.h,
                ),
                ButtonContinue(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup_2(),));},),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 72),
                  child: Row(
                    children: [
                      Text('Already have an account?',
                          style: TextStyle(
                              color: Color(0xFF8D8D8D), fontSize: 14)),
                      InkWell(
                        child: Text(
                          '  Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
