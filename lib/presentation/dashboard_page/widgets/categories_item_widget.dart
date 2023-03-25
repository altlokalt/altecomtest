import '../controller/dashboard_controller.dart';
import '../models/categories_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.categoriesItemModelObj, {this.callApi});

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? callApi;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
            bottom: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 70,
                width: 70,
                onTap: () {
                  callApi!();
                },
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
                    categoriesItemModelObj.manshirtTxt.value,
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
    );
  }
}
