import 'package:get/get.dart';
import 'buyingformate_item_model.dart';
import 'itemlocation_item_model.dart';
import 'showonly_item_model.dart';

class FilterModel {
  RxList<BuyingformateItemModel> buyingformateItemList =
      RxList.generate(5, (index) => BuyingformateItemModel());

  RxList<ItemlocationItemModel> itemlocationItemList =
      RxList.generate(4, (index) => ItemlocationItemModel());

  RxList<ShowonlyItemModel> showonlyItemList =
      RxList.generate(11, (index) => ShowonlyItemModel());
}
