import '../search_result_one_screen/widgets/gridnikeairmaxreact_item_widget.dart';
import 'controller/search_result_one_controller.dart';
import 'models/gridnikeairmaxreact_item_model.dart';
import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/app_bar/appbar_image.dart';
import 'package:altlokaltecom/widgets/app_bar/custom_app_bar.dart';
import 'package:altlokaltecom/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
          ),
          title: CustomSearchView(
            width: getHorizontalSize(
              263,
            ),
            focusNode: FocusNode(),
            controller: controller.searchController,
            hintText: "lbl_nike_air_max".tr,
            margin: getMargin(
              left: 16,
            ),
            fontStyle: SearchViewFontStyle.PoppinsBold12,
            prefix: Container(
              margin: getMargin(
                left: 16,
                top: 12,
                right: 8,
                bottom: 14,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearchLightBlueA20016x16,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: getVerticalSize(
                42,
              ),
            ),
            suffix: Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  15,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  controller.searchController.clear();
                },
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSort,
              margin: getMargin(
                left: 16,
                top: 9,
                right: 9,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                left: 16,
                top: 9,
                right: 25,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: 18,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(
                    height: getVerticalSize(
                      1,
                    ),
                    thickness: getVerticalSize(
                      1,
                    ),
                    color: ColorConstant.blue50,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 15,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_145_result".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtPoppinsBold12Indigo90087.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_man_shoes".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdown,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            left: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            283,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            13,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            13,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.searchResultOneModelObj.value
                            .gridnikeairmaxreactItemList.length,
                        itemBuilder: (context, index) {
                          GridnikeairmaxreactItemModel model = controller
                              .searchResultOneModelObj
                              .value
                              .gridnikeairmaxreactItemList[index];
                          return GridnikeairmaxreactItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
