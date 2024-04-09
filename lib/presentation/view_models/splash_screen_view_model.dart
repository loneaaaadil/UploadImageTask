import 'package:code_land_task/presentation/views/screens/login_page.dart';
import 'package:get/get.dart';

class SplashScreenViewModel extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const LoginPage()); // Navigate to next screen
    });
  }
}
