import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/search_result_screen/models/search_result_model.dart';
import 'package:flutter/material.dart';

class SearchResultController extends GetxController {
  TextEditingController searchformController = TextEditingController();

  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchformController.dispose();
  }
}
