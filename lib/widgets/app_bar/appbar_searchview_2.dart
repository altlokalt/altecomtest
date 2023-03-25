import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview2 extends StatelessWidget {
  AppbarSearchview2({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(
          263,
        ),
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        prefix: Container(
          margin: getMargin(
            left: 16,
            top: 15,
            right: 8,
            bottom: 15,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchLightBlueA20016x16,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            46,
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
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}