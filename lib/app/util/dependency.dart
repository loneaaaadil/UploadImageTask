import 'package:code_land_task/presentation/view_models/image_page_view_model.dart';
import 'package:code_land_task/presentation/view_models/login_page_view_model.dart';
import 'package:code_land_task/presentation/view_models/splash_screen_view_model.dart';
import 'package:get/get.dart';

class DependencyInject {
  static init() {
    Get.lazyPut(
      () => SplashScreenViewModel(),
    );
    Get.lazyPut(
      () => LoginPageViewModel(),
    );
    Get.lazyPut(
      () => ImagePageViewModel(),
    );
  }
}
