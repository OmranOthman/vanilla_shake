// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vanilla_shake/components/buttonContinue.dart';
import 'package:vanilla_shake/components/textFormField_Signup.dart';
import 'package:vanilla_shake/components/togglebutton.dart';
import 'package:vanilla_shake/screens/my_interests.dart';

class Signup_2 extends StatefulWidget {
  const Signup_2({Key? key}) : super(key: key);

  @override
  _Signup_2State createState() => _Signup_2State();
}

class _Signup_2State extends State<Signup_2> {
  bool isConfirmPasswordVisible = false;
  late String? value = '';
  bool isMale = true;
  var color = Colors.deepPurple;

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'STEP 2/3',
                      style: TextStyle(fontSize: 13.sp, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Enter your name',
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
                      'Date of birth',
                      style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 15),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    TextFormField_Signup(
                        width: 99.0.w,
                        height: 80.0.h,
                        textAlign: TextAlign.center,
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next),
                    SizedBox(
                      width: 19.w,
                    ),
                    TextFormField_Signup(
                        width: 99.0.w,
                        height: 80.0.h,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next),
                    SizedBox(
                      width: 19.w,
                    ),
                    TextFormField_Signup(
                        width: 99.0.w,
                        height: 80.0.h,
                        maxLength: 4,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done),
                  ],
                ), //Date of birthday
                SizedBox(
                  height: 38.h,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Choose your country',
                      style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 15),
                    )),
                Container(
                  width: 323.w,
                  height: 64.h,
                  padding: EdgeInsets.only(left: 22, top: 8),
                  margin: EdgeInsets.only(top: 17, right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFDDBDD),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                          15.r), //                 <--- border radius here
                    ),
                  ),
                  child: DropdownButton<String?>(
                      borderRadius: BorderRadius.circular(15.r),
                      hint: Text(
                        "...",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: "1",
                          child: Text(
                            "USA",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: "2",
                          child: Text(
                            "UK",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: "3",
                          child: Text(
                            "ARG",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          this.value = value;
                        });
                      },
                      value: value == '' ? null : value),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: isMale ? Theme.of(context).primaryColor:Colors.white,
                        border: Border.all(
                          color:Color(0xFFF2B3B7),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              15.r), //                 <--- border radius here
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            color: isMale ? Colors.white:Color(0xFFF2B3B7),),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        color: !isMale ? Theme.of(context).primaryColor:Colors.white,
                        border: Border.all(
                          color: Color(0xFFF2B3B7),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.r),
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            color: !isMale ? Colors.white:Color(0xFFF2B3B7),
                        ),
                      ),
                    ),
                    ),],
                ),
                SizedBox(
                  height: 90.h,
                ),
                ButtonContinue(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => My_interests(),));},),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
