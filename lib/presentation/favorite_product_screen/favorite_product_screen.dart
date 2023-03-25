import '../favorite_product_screen/widgets/gridnikeairmaxreact1_item_widget.dart';
import 'controller/favorite_product_controller.dart';
import 'models/gridnikeairmaxreact1_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteProductScreen extends GetWidget<FavoriteProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: onTapArrowleft15),
                title: AppbarTitle(
                    text: "msg_favorite_product".tr,
                    margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 8, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(283),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(13),
                        crossAxisSpacing: getHorizontalSize(13)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.favoriteProductModelObj.value
                        .gridnikeairmaxreact1ItemList.length,
                    itemBuilder: (context, index) {
                      Gridnikeairmaxreact1ItemModel model = controller
                          .favoriteProductModelObj
                          .value
                          .gridnikeairmaxreact1ItemList[index];
                      return Gridnikeairmaxreact1ItemWidget(model);
                    })))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
