import 'controller/success_controller.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_button.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
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
                variant: IconButtonVariant.OutlineLightblueA2003d,
                padding: IconButtonPadding.PaddingAll18,
                child: CustomImageView(
                  svgPath: ImageConstant.imgCheckmark,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Text(
                  "lbl_success".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold24Indigo900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "msg_thank_you_for_shopping".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular12Indigo90087.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  57,
                ),
                text: "lbl_back_to_order".tr,
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
