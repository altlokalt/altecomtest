import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/add_address_screen/models/add_address_model.dart';
import 'package:flutter/material.dart';

class AddAddressController extends GetxController {
  TextEditingController oldpasswordController = TextEditingController();

  TextEditingController oldpasswordOneController = TextEditingController();

  TextEditingController oldpasswordTwoController = TextEditingController();

  TextEditingController oldpasswordThreeController = TextEditingController();

  TextEditingController oldpasswordFourController = TextEditingController();

  TextEditingController oldpasswordFiveController = TextEditingController();

  TextEditingController oldpasswordSixController = TextEditingController();

  TextEditingController oldpasswordSevenController = TextEditingController();

  TextEditingController oldpasswordEightController = TextEditingController();

  Rx<AddAddressModel> addAddressModelObj = AddAddressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    oldpasswordController.dispose();
    oldpasswordOneController.dispose();
    oldpasswordTwoController.dispose();
    oldpasswordThreeController.dispose();
    oldpasswordFourController.dispose();
    oldpasswordFiveController.dispose();
    oldpasswordSixController.dispose();
    oldpasswordSevenController.dispose();
    oldpasswordEightController.dispose();
  }
}
