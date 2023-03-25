import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/order_details_screen/models/order_details_model.dart';

class OrderDetailsController extends GetxController {
  Rx<OrderDetailsModel> orderDetailsModelObj = OrderDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
