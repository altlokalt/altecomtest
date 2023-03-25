import 'package:get/get.dart';
import 'listoffer_item_model.dart';

class NotificationOfferModel {
  RxList<ListofferItemModel> listofferItemList =
      RxList.generate(3, (index) => ListofferItemModel());
}
