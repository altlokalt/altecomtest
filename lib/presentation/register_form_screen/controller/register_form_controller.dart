import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/register_form_screen/models/register_form_model.dart';
import 'package:flutter/material.dart';

class RegisterFormController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController youremailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordagainController = TextEditingController();

  Rx<RegisterFormModel> registerFormModelObj = RegisterFormModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    youremailController.dispose();
    passwordController.dispose();
    passwordagainController.dispose();
  }
}
