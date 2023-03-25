import '../offer_screen/widgets/offer_screen_item_widget.dart';
import 'controller/offer_controller.dart';
import 'models/offer_screen_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OfferScreen extends GetWidget<OfferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "msg_super_flash_sale".tr,
                    margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16, right: 16, bottom: 2))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 41, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(206),
                                  width: getHorizontalSize(343),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgPromotionimage,
                                            height: getVerticalSize(206),
                                            width: getHorizontalSize(343),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(5)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  209),
                                                          child: Text(
                                                              "msg_super_flash_sale_50"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsBold24
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.5)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 31),
                                                          child: Row(children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 8,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_08".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.5)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 10,
                                                                        bottom:
                                                                            9),
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.07)))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            4),
                                                                padding: getPadding(
                                                                    left: 9,
                                                                    top: 8,
                                                                    right: 9,
                                                                    bottom: 8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_34".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.5)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 4,
                                                                        top: 10,
                                                                        bottom:
                                                                            9),
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.07)))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        42),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            4),
                                                                padding: getPadding(
                                                                    left: 10,
                                                                    top: 8,
                                                                    right: 10,
                                                                    bottom: 8),
                                                                decoration: AppDecoration
                                                                    .txtFillWhiteA700
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder5),
                                                                child: Text(
                                                                    "lbl_52".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.5))))
                                                          ]))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(283),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(13),
                                              crossAxisSpacing:
                                                  getHorizontalSize(13)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.offerModelObj.value
                                          .offerScreenItemList.length,
                                      itemBuilder: (context, index) {
                                        OfferScreenItemModel model = controller
                                            .offerModelObj
                                            .value
                                            .offerScreenItemList[index];
                                        return OfferScreenItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
