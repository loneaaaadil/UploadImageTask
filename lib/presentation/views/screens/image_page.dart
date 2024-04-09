import 'package:code_land_task/app/config/app_colors.dart';
import 'package:code_land_task/app/config/app_constants.dart';
import 'package:code_land_task/presentation/view_models/image_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/rounded_rectangle_button.dart';

class Imagepage extends GetView<ImagePageViewModel> {
  const Imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePageViewModel imagePageViewModel = Get.put(ImagePageViewModel());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 34.h),
              child: Center(
                child: Text(
                  AppStrings.uploadImage,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Obx(() {
              if (controller.imageFile.value != null) {
                return Image.file(
                  controller.imageFile.value!,
                  width: 296,
                  height: 509,
                  fit: BoxFit.cover,
                );
              } else {
                return Image.asset(AppStrings.bgImage);
              }
            }),
            Gap(75.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    controller.pickImage();
                  },
                  child: RoundedRectangleButton(
                      height: 35.h,
                      text: AppStrings.upload,
                      width: 119.w,
                      radius: 12.r,
                      bgcolor: AppColors.primaryColor,
                      txtColor: AppColors.whiteColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                Gap(86.w),
                GestureDetector(
                  onTap: () {
                    controller.viewLastUploaded();
                  },
                  child: RoundedRectangleButton(
                      height: 35.h,
                      text: AppStrings.view,
                      width: 119.w,
                      radius: 12.r,
                      bgcolor: AppColors.lightGreyColor,
                      txtColor: AppColors.blackColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
