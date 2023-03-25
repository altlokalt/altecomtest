import '../controller/product_detail_controller.dart';
import '../models/sizes_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SizesItemWidget extends StatelessWidget {
  SizesItemWidget(this.sizesItemModelObj);

  SizesItemModel sizesItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getSize(
            48,
          ),
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 19,
            top: 13,
            right: 19,
            bottom: 13,
          ),
          decoration: AppDecoration.txtOutlineBlue501.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder24,
          ),
          child: Obx(
            () => Text(
              sizesItemModelObj.sevenTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
