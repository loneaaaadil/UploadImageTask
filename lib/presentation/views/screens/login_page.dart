import 'package:code_land_task/app/config/app_colors.dart';
import 'package:code_land_task/app/config/app_constants.dart';
import 'package:code_land_task/presentation/view_models/login_page_view_model.dart';
import 'package:code_land_task/presentation/views/widgets/rich_text_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/login_form_field.dart';
import '../widgets/rounded_rectangle_button.dart';
import 'image_page.dart';

class LoginPage extends GetView<LoginPageViewModel> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                AppStrings.loginScreen,
                height: 329.h,
                width: 210.w,
              ),
            ),
            Gap(20.h),
            LoginFormField(
              hintText: AppStrings.userName,
              controller: controller.usernameController,
            ),
            Gap(19.h),
            LoginFormField(
              hintText: AppStrings.password,
              controller: controller.passwordController,
            ),
            Gap(27.h),
            GestureDetector(
              onTap: () {
                (controller.isUserNameEmpty() || controller.isPasswordEmpty())
                    ? Get.snackbar('Error', '',
                        colorText: AppColors.whiteColor,
                        messageText: Text(
                          "Both fields are required.",
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 16.sp),
                        ),
                        backgroundColor: AppColors.primaryColor)
                    : Get.to(() => const Imagepage());
              },
              child: RoundedRectangleButton(
                  height: 48.h,
                  text: AppStrings.login,
                  width: 328.h,
                  radius: 12.r,
                  bgcolor: AppColors.primaryColor,
                  txtColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp),
            ),
            Gap(56.h),
            Padding(
              padding: EdgeInsets.only(right: 60.w),
              child: const Text(AppStrings.loginContactDetails),
            ),
            const RichTextElement(
              text: AppStrings.engKanHin,
              number: AppStrings.phone1,
            ),
            const RichTextElement(
              text: AppStrings.engKanHin,
              number: AppStrings.phone2,
            ),
            const Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.version),
                Text(AppStrings.year2023),
                Text(AppStrings.companyName),
              ],
            )),
            Gap(5.h),

            // const Text('English, Kannada & Telugu :  ${7406333800} '),
            // const Text('English, Kannada & Hindi    :  ${9071386515}'),
          ],
        ),
      ),
    );
  }
}
