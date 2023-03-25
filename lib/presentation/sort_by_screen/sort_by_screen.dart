import 'controller/sort_by_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SortByScreen extends GetWidget<SortByController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: onTapArrowleft14),
                title: AppbarTitle(
                    text: "lbl_sort_by".tr, margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("lbl_best_match".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12LightblueA200
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillBlue50,
                          child: Text("msg_time_ending_soonest".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_time_newly_listed".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_price_shipping".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_price_shipping2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(bottom: 5),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.txtFillWhiteA700,
                          child: Text("msg_distance_nearest".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5))))
                    ]))));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
