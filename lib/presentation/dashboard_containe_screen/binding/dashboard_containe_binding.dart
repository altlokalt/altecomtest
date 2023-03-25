import '../controller/dashboard_containe_controller.dart';
import 'package:get/get.dart';

class DashboardContaineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContaineController());
  }
}
