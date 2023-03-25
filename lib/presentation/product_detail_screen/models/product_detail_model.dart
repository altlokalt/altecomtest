import 'package:get/get.dart';
import 'slider_item_model.dart';
import 'sizes_item_model.dart';
import 'recomended_item_model.dart';

class ProductDetailModel {
  RxList<SliderItemModel> sliderItemList =
      RxList.generate(1, (index) => SliderItemModel());

  RxList<SizesItemModel> sizesItemList =
      RxList.generate(6, (index) => SizesItemModel());

  RxList<RecomendedItemModel> recomendedItemList =
      RxList.generate(3, (index) => RecomendedItemModel());
}
