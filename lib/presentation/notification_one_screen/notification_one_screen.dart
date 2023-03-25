import '../notification_one_screen/widgets/listarrowleft_item_widget.dart';
import 'controller/notification_one_controller.dart';
import 'models/listarrowleft_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_title.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOneScreen extends GetWidget<NotificationOneController> {
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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: onTapArrowleft3),
                title: AppbarTitle(
                    text: "lbl_activity".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 11),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(1));
                    },
                    itemCount: controller.notificationOneModelObj.value
                        .listarrowleftItemList.length,
                    itemBuilder: (context, index) {
                      ListarrowleftItemModel model = controller
                          .notificationOneModelObj
                          .value
                          .listarrowleftItemList[index];
                      return ListarrowleftItemWidget(model);
                    })))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
