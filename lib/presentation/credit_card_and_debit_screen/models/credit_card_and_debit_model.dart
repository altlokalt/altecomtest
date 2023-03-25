import 'package:get/get.dart';
import 'listvolume_item_model.dart';

class CreditCardAndDebitModel {
  RxList<ListvolumeItemModel> listvolumeItemList =
      RxList.generate(2, (index) => ListvolumeItemModel());
}
