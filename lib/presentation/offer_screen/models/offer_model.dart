import 'package:get/get.dart';
import 'offer_screen_item_model.dart';

class OfferModel {
  RxList<OfferScreenItemModel> offerScreenItemList =
      RxList.generate(4, (index) => OfferScreenItemModel());
}
