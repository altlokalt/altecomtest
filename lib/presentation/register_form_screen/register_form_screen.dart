import 'controller/register_form_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:altlokaltecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterFormScreen extends GetWidget<RegisterFormController> {
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
            padding: getPadding(
              left: 16,
              right: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 72,
                  width: 72,
                  variant: IconButtonVariant.FillLightblueA200,
                  shape: IconButtonShape.RoundedBorder16,
                  padding: IconButtonPadding.PaddingAll18,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCloseWhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "msg_let_s_get_started".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Text(
                    "msg_create_an_new_account".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12Bluegray300.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.fullnameController,
                  hintText: "lbl_full_name".tr,
                  margin: getMargin(
                    top: 30,
                  ),
                  padding: TextFormFieldPadding.PaddingT15_1,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgUser,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.youremailController,
                  hintText: "lbl_your_email".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  padding: TextFormFieldPadding.PaddingT15_1,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMailBlueGray300,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.passwordController,
                  hintText: "lbl_password".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  padding: TextFormFieldPadding.PaddingT15_1,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLock,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  isObscureText: true,
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: controller.passwordagainController,
                  hintText: "lbl_password_again".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  padding: TextFormFieldPadding.PaddingT15_1,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLock,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      48,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  isObscureText: true,
                ),
                CustomButton(
                  height: getVerticalSize(
                    57,
                  ),
                  text: "lbl_sign_up".tr,
                  margin: getMargin(
                    top: 20,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 20,
                    bottom: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_have_an_account2".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray300,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                            color: ColorConstant.indigoA200,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_sign_in".tr,
                          style: TextStyle(
                            color: ColorConstant.lightBlueA200,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
