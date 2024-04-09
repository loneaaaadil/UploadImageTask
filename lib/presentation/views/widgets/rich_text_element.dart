import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/config/app_colors.dart';

class RichTextElement extends StatelessWidget {
  final String text;
  final String number;
  const RichTextElement({
    super.key,
    required this.text,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 60.w),
      child: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(color: AppColors.blackColor),
          children: [
            TextSpan(
              text: number,
              style: const TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
