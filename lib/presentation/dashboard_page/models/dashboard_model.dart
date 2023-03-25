import 'package:get/get.dart';
import 'sliderofferbannertitl_item_model.dart';
import 'categories_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'dashboard_item_model.dart';

class DashboardModel {
  RxList<SliderofferbannertitlItemModel> sliderofferbannertitlItemList =
      RxList.generate(1, (index) => SliderofferbannertitlItemModel());

  RxList<CategoriesItemModel> categoriesItemList =
      RxList.generate(6, (index) => CategoriesItemModel());

  RxList<FlashsaleItemModel> flashsaleItemList =
      RxList.generate(3, (index) => FlashsaleItemModel());

  RxList<MegasaleItemModel> megasaleItemList =
      RxList.generate(3, (index) => MegasaleItemModel());

  RxList<DashboardItemModel> dashboardItemList =
      RxList.generate(4, (index) => DashboardItemModel());
}
