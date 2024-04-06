// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsButton extends StatefulWidget {
  SettingsButton({
    required this.onPressed,
    required this.label,
    required this.imageIcon,
  });

  var onPressed;
  String label;
  var imageIcon;

  @override
  _SettingsButtonState createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
          ),
          onPressed: widget.onPressed,
          child: Row(
            children: [
              ImageIcon(
                AssetImage(widget.imageIcon),
                color: Color(0xFF8D8D8D),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                widget.label,
                style: TextStyle(color: Colors.black, fontSize: 15.sp,fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
