import '../controller/explore_controller.dart';
import '../models/explore_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(this.exploreItemModelObj);

  ExploreItemModel exploreItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 70,
          width: 70,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowleftLightBlueA200,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 7,
          ),
          child: Obx(
            () => Text(
              exploreItemModelObj.manshirtTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular10.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
