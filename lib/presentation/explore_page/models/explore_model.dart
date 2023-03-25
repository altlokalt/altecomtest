import 'package:get/get.dart';
import 'explore_item_model.dart';
import 'explore1_item_model.dart';

class ExploreModel {
  RxList<ExploreItemModel> exploreItemList =
      RxList.generate(6, (index) => ExploreItemModel());

  RxList<Explore1ItemModel> explore1ItemList =
      RxList.generate(2, (index) => Explore1ItemModel());
}
