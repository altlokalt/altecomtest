import '../notification_offer_screen/widgets/listoffer_item_widget.dart';
import 'controller/notification_offer_controller.dart';
import 'models/listoffer_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOfferScreen extends GetWidget<NotificationOfferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: onTapArrowleft23),
                title: AppbarTitle(
                    text: "lbl_notification".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 12),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(1));
                    },
                    itemCount: controller.notificationOfferModelObj.value
                        .listofferItemList.length,
                    itemBuilder: (context, index) {
                      ListofferItemModel model = controller
                          .notificationOfferModelObj
                          .value
                          .listofferItemList[index];
                      return ListofferItemWidget(model);
                    })))));
  }

  onTapArrowleft23() {
    Get.back();
  }
}
