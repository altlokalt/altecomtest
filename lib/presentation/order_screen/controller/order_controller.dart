import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/order_screen/models/order_model.dart';

class OrderController extends GetxController {
  Rx<OrderModel> orderModelObj = OrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
