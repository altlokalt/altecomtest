import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/change_password_screen/models/change_password_model.dart';
import 'package:flutter/material.dart';

class ChangePasswordController extends GetxController {
  TextEditingController oldpasswordOneController = TextEditingController();

  TextEditingController newpasswordOneController = TextEditingController();

  TextEditingController newpasswordagaiTwoController = TextEditingController();

  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    oldpasswordOneController.dispose();
    newpasswordOneController.dispose();
    newpasswordagaiTwoController.dispose();
  }
}
