import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.dashboardContaineScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
