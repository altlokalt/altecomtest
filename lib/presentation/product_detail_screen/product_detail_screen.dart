import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import '../product_detail_screen/widgets/slider_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/recomended_item_model.dart';
import 'models/sizes_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft17),
                title: AppbarTitle(
                    text: "msg_nike_air_max_2704".tr,
                    margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: getMargin(left: 16, right: 16))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 28, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(238),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: controller.productDetailModelObj
                                      .value.sliderItemList.length,
                                  itemBuilder: (context, index, realIndex) {
                                    SliderItemModel model = controller
                                        .productDetailModelObj
                                        .value
                                        .sliderItemList[index];
                                    return SliderItemWidget(model);
                                  })),
                              Align(
                                  alignment: Alignment.center,
                                  child: Obx(() => Container(
                                      height: getVerticalSize(8),
                                      margin: getMargin(top: 16),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex:
                                              controller.silderIndex.value,
                                          count: controller
                                              .productDetailModelObj
                                              .value
                                              .sliderItemList
                                              .length,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 8,
                                              activeDotColor:
                                                  ColorConstant.lightBlueA200,
                                              dotColor: ColorConstant.blue50,
                                              dotHeight: getVerticalSize(8),
                                              dotWidth:
                                                  getHorizontalSize(8)))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 15, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(275),
                                                child: Text(
                                                    "msg_nike_air_zoom_pegasus"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    left: 44,
                                                    top: 2,
                                                    bottom: 32))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 9),
                                  child: RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(16),
                                      unratedColor: ColorConstant.blue50,
                                      itemCount: 5,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(Icons.star,
                                            color: ColorConstant.yellow700);
                                      })),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("lbl_299_43".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsBold20LightblueA200
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 22),
                                  child: Text("lbl_select_size".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(61),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .sizesItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            SizesItemModel model = controller
                                                .productDetailModelObj
                                                .value
                                                .sizesItemList[index];
                                            return SizesItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("lbl_select_color".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgColors,
                                  height: getVerticalSize(48),
                                  width: getHorizontalSize(359),
                                  margin: getMargin(left: 16, top: 12)),
                              Padding(
                                  padding: getPadding(left: 16, top: 24),
                                  child: Text("lbl_specification".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 11, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 23),
                                                child: Text("lbl_shown".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Container(
                                                width: getHorizontalSize(144),
                                                child: Text(
                                                    "msg_laser_blue_anth".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Bluegray3001
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 40, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("lbl_style".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_cd0113_400".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Bluegray300
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(322),
                                  margin:
                                      getMargin(left: 16, top: 19, right: 36),
                                  child: Text("msg_the_nike_air_max".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Bluegray3001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 24, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_review_product".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))),
                                            Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(16),
                                        unratedColor: ColorConstant.blue50,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star,
                                              color: ColorConstant.yellow700);
                                        }),
                                    Padding(
                                        padding: getPadding(left: 8, bottom: 1),
                                        child: Text("lbl_4_5".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold10Bluegray300
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Padding(
                                        padding: getPadding(left: 3, bottom: 1),
                                        child: Text("lbl_5_review2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProfilepicture,
                                        height: getSize(48),
                                        width: getSize(48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(24))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 2, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_james_lawson".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: RatingBar.builder(
                                                      initialRating: 4,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(16),
                                                      unratedColor:
                                                          ColorConstant.blue50,
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(339),
                                      margin: getMargin(
                                          left: 16, top: 18, right: 19),
                                      child: Text("msg_air_max_are_always".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular12Bluegray3001
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.5))))),
                              Padding(
                                  padding: getPadding(left: 16, top: 18),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture02,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture03,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8)),
                                        margin: getMargin(left: 12)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgProductpicture01,
                                        height: getSize(72),
                                        width: getSize(72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        margin: getMargin(left: 12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("msg_december_10_2016".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("msg_you_might_also_like".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(249),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 11),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .recomendedItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            RecomendedItemModel model =
                                                controller
                                                    .productDetailModelObj
                                                    .value
                                                    .recomendedItemList[index];
                                            return RecomendedItemWidget(model);
                                          }))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_to_cart".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
