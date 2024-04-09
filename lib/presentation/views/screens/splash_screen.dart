import 'package:code_land_task/app/config/app_colors.dart';
import 'package:code_land_task/presentation/view_models/splash_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/config/app_constants.dart';

class SplashScreen extends GetView<SplashScreenViewModel> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(
          AppStrings.splashScreen,
          height: 320.h,
          width: 224.w,
        ),
      ),
    );
  }
}
