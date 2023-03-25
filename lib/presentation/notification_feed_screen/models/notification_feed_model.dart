import 'package:get/get.dart';
import 'listnewproduct_item_model.dart';

class NotificationFeedModel {
  RxList<ListnewproductItemModel> listnewproductItemList =
      RxList.generate(3, (index) => ListnewproductItemModel());
}
