import 'package:get/get.dart';
import 'order_item_model.dart';

class OrderModel {
  RxList<OrderItemModel> orderItemList =
      RxList.generate(3, (index) => OrderItemModel());
}
