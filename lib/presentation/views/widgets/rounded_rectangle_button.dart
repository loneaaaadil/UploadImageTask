import 'package:flutter/material.dart';

import '../../../app/config/app_colors.dart';

class RoundedRectangleButton extends StatelessWidget {
  final double height;
  final FontWeight fontWeight;
  final String text;
  final double width;
  final double radius;
  final Color bgcolor;
  final Color txtColor;
  final double fontSize;
  const RoundedRectangleButton({
    super.key,
    required this.height,
    required this.text,
    required this.width,
    required this.radius,
    required this.bgcolor,
    required this.txtColor,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: vpadding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgcolor,
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGreyColor,
            offset: Offset(
              0.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: txtColor),
        ),
      ),
    );
  }
}
