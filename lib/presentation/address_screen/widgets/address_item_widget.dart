import '../controller/address_controller.dart';
import '../models/address_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj);

  AddressItemModel addressItemModelObj;

  var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 22,
          right: 24,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineLightblueA200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                addressItemModelObj.priscekilaTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                264,
              ),
              margin: getMargin(
                top: 19,
                right: 30,
              ),
              child: Text(
                "msg_3711_spring_hill".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12Bluegray3001.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Text(
                "lbl_99_1234567890".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12Bluegray300.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
                bottom: 2,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_edit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14LightblueA2001.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 32,
                    ),
                    child: Text(
                      "lbl_delete".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Pink300.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
