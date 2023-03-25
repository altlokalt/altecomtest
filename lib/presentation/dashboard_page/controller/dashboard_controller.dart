import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/dashboard_page/models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:altlokaltecom/data/models/list/post_list_resp.dart';
import 'package:altlokaltecom/data/apiClient/api_client.dart';

class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  Rx<DashboardModel> dashboardModelObj;

  Rx<int> silderIndex = 0.obs;

  PostListResp postListResp = PostListResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callCreateList(Map req) async {
    try {
      postListResp = await Get.find<ApiClient>().createList(headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM',
      }, requestData: req);
      _handleCreateListSuccess();
    } on PostListResp catch (e) {
      postListResp = e;
      rethrow;
    }
  }

  void _handleCreateListSuccess() {}
}
