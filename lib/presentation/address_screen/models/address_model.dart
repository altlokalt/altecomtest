import 'package:get/get.dart';
import 'address_item_model.dart';

class AddressModel {
  RxList<AddressItemModel> addressItemList =
      RxList.generate(2, (index) => AddressItemModel());
}
