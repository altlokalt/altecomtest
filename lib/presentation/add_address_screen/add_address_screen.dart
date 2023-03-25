import 'controller/add_address_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends GetWidget<AddAddressController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft2),
                title: AppbarTitle(
                    text: "lbl_add_address".tr, margin: getMargin(left: 12))),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 45, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_country_or_region".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.oldpasswordController,
                                  hintText: "msg_enter_the_country".tr,
                                  margin: getMargin(top: 11),
                                  variant: TextFormFieldVariant.OutlineBlue50),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordOneController,
                                  hintText: "msg_enter_the_first".tr,
                                  margin: getMargin(top: 13),
                                  variant: TextFormFieldVariant.OutlineBlue50,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordTwoController,
                                  hintText: "msg_enter_the_last_name".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordThreeController,
                                  hintText: "msg_enter_the_street".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_street_address_2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordFourController,
                                  hintText: "msg_enter_the_street2".tr,
                                  margin: getMargin(top: 16),
                                  variant: TextFormFieldVariant.OutlineBlue50),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_city".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordFiveController,
                                  hintText: "lbl_enter_the_city".tr,
                                  margin: getMargin(top: 11),
                                  variant: TextFormFieldVariant.OutlineBlue50),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("msg_state_province_region".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordSixController,
                                  hintText: "msg_enter_the_state".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_zip_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordSevenController,
                                  hintText: "msg_enter_the_zip_code".tr,
                                  margin: getMargin(top: 11),
                                  variant: TextFormFieldVariant.OutlineBlue50,
                                  textInputType: TextInputType.number,
                                  validator: (value) {
                                    if (!isNumeric(value)) {
                                      return "Please enter valid number";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_phone_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordEightController,
                                  hintText: "msg_enter_the_phone".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.phone,
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_address".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
