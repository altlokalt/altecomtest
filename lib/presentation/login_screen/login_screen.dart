import 'controller/login_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:altlokaltecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:altlokaltecom/domain/googleauth/google_auth_helper.dart';
import 'package:altlokaltecom/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 16, top: 68, right: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 72,
                              width: 72,
                              variant: IconButtonVariant.FillLightblueA200,
                              shape: IconButtonShape.RoundedBorder16,
                              padding: IconButtonPadding.PaddingAll18,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCloseWhiteA700)),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Text("msg_welcome_to_e_com".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold16.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Text("msg_sign_in_to_continue".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12Bluegray300
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_your_email".tr,
                              margin: getMargin(top: 28),
                              padding: TextFormFieldPadding.PaddingT15_1,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgMailBlueGray300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 10),
                              padding: TextFormFieldPadding.PaddingT15_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(57),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 16)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(134),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.blue50))),
                                    Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold14Bluegray300
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.07))),
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(137),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.blue50)))
                                  ])),
                          GestureDetector(
                              onTap: () {
                                onTapRowgoogle();
                              },
                              child: Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 7, top: 15, right: 7, bottom: 15),
                                  decoration: AppDecoration.outlineBlue501
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 72, top: 3),
                                        child: Text("msg_login_with_google".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Bluegray3001
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))),
                          GestureDetector(
                              onTap: () {
                                onTapRowfacebook();
                              },
                              child: Container(
                                  margin: getMargin(top: 8),
                                  padding: getPadding(
                                      left: 7, top: 15, right: 7, bottom: 15),
                                  decoration: AppDecoration.outlineBlue501
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFacebook,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 64, top: 3),
                                        child: Text(
                                            "msg_login_with_facebook".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Bluegray3001
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ]))),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("msg_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold12LightblueA200
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5)))),
                          Padding(
                              padding: getPadding(top: 7, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: "lbl_register".tr,
                                        style: TextStyle(
                                            color: ColorConstant.lightBlueA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5)))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
