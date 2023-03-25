import 'controller/change_password_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: onTapArrowleft11),
                title: AppbarTitle(
                    text: "lbl_change_password".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 26, right: 16, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_old_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.oldpasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50,
                          padding: TextFormFieldPadding.PaddingT15_1,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.newpasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50,
                          padding: TextFormFieldPadding.PaddingT15_1,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_new_password_again".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.newpasswordagaiTwoController,
                          hintText: "msg".tr,
                          margin: getMargin(top: 11, bottom: 5),
                          variant: TextFormFieldVariant.OutlineBlue50,
                          padding: TextFormFieldPadding.PaddingT15_1,
                          fontStyle: TextFormFieldFontStyle.PoppinsBold12,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_save".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
