import '../controller/notification_feed_controller.dart';
import '../models/listnewproduct_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListnewproductItemWidget extends StatelessWidget {
  ListnewproductItemWidget(this.listnewproductItemModelObj);

  ListnewproductItemModel listnewproductItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProductimage48x48,
            height: getSize(
              48,
            ),
            width: getSize(
              48,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5,
              ),
            ),
            margin: getMargin(
              bottom: 40,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_new_product".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      269,
                    ),
                    margin: getMargin(
                      top: 6,
                    ),
                    child: Text(
                      "msg_nike_air_zoom_pegasus2".tr,
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
                      top: 4,
                    ),
                    child: Text(
                      "msg_june_3_2015_5_06".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10Indigo900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
