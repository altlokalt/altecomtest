import 'package:get/get.dart';
import 'listarrowleft_item_model.dart';

class NotificationOneModel {
  RxList<ListarrowleftItemModel> listarrowleftItemList =
      RxList.generate(3, (index) => ListarrowleftItemModel());
}
