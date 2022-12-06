import 'package:flutter/material.dart';

class AppTextStyles extends StatelessWidget {
  final String text;
   Color? textColor;
  final double fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  double?height;

  AppTextStyles(
      {this.height,
        required this.text,
       this.textColor,
      required this.fontSize,
      this.fontWeight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textAlign,
      style: TextStyle(height: height,
          fontSize: fontSize, fontWeight: fontWeight, color:textColor==null?Colors.black: textColor),
    );
  }
}
