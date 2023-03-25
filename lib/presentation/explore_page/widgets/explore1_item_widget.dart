import '../controller/explore_controller.dart';
import '../models/explore1_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Explore1ItemWidget extends StatelessWidget {
  Explore1ItemWidget(this.explore1ItemModelObj);

  Explore1ItemModel explore1ItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: getPadding(
              right: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.dressTxt.value,
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
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTicket,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    56,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.womantshirtTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgWomanpantsicon,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    41,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.womanpantsTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTrashLightBlueA200,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.skirtTxt.value,
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
            ),
          ),
        ),
      ],
    );
  }
}
