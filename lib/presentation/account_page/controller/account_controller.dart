import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/presentation/account_page/models/account_model.dart';

class AccountController extends GetxController {
  AccountController(this.accountModelObj);

  Rx<AccountModel> accountModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
