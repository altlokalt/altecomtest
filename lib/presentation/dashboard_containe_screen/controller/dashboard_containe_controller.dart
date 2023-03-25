import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/dashboard_containe_screen/models/dashboard_containe_model.dart';
import 'package:altlokaltecom/widgets/custom_bottom_bar.dart';

class DashboardContaineController extends GetxController {
  Rx<DashboardContaineModel> dashboardContaineModelObj =
      DashboardContaineModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
