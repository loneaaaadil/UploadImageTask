import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageViewModel extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isUserNameEmpty() {
    return usernameController.text.isEmpty;
  }

  bool isPasswordEmpty() {
    return passwordController.text.isEmpty;
  }
}
