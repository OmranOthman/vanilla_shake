// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> selected = [false, false];
  List<String> type = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selected.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            for (int buttonIndex = 0;
                buttonIndex < selected.length;
                buttonIndex++) {
              if (buttonIndex == index) {
                setState(() {
                  selected[index] = true;
                });
              } else {
                setState(() {
                  selected[index] = false;
                });
              }
            }
          },
          child: Container(
            height: 60.h,
            width: 155.w,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(
              color: selected[index] ? Colors.amber : Colors.white,
              border: Border.all(
                color: Color(0xFFF2B3B7),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15.r),
              ),
            ),
            child: Text(type[index]),
          ),
        ),
      ),
    );
  }
}
