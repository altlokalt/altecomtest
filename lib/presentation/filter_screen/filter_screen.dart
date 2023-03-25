import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgCloseBlueGray300,
                    margin: getMargin(left: 18),
                    onTap: onTapClose),
                title: AppbarTitle(
                    text: "lbl_filter_search".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 47, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_price_range".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.priceController,
                                                hintText: "lbl_1_245".tr,
                                                margin: getMargin(right: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingAll15,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsBold12)),
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .priceOneController,
                                                hintText: "lbl_9_344".tr,
                                                margin: getMargin(left: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingAll15,
                                                fontStyle:
                                                    TextFormFieldFontStyle
                                                        .PoppinsBold12,
                                                textInputAction:
                                                    TextInputAction.done))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("lbl_condition".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13, right: 82),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtOutlineBlue50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular12Bluegray300
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(65),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_used".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12LightblueA200
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(120),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_not_specified".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12LightblueA200
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_buying_format".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .buyingformateItemList
                                              .length, (index) {
                                        BuyingformateItemModel model =
                                            controller.filterModelObj.value
                                                .buyingformateItemList[index];
                                        return BuyingformateItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_item_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .itemlocationItemList
                                              .length, (index) {
                                        ItemlocationItemModel model = controller
                                            .filterModelObj
                                            .value
                                            .itemlocationItemList[index];
                                        return ItemlocationItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("lbl_show_only".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .showonlyItemList
                                              .length, (index) {
                                        ShowonlyItemModel model = controller
                                            .filterModelObj
                                            .value
                                            .showonlyItemList[index];
                                        return ShowonlyItemWidget(model);
                                      })))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_apply".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapClose() {
    Get.back();
  }
}
