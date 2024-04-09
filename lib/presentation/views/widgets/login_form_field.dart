import 'package:code_land_task/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const LoginFormField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.sp,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyColor),
          // border: const OutlineInputBorder(
        ),
      ),
    );
  }
}
