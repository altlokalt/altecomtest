import 'package:altlokaltecom/core/app_export.dart';
import 'package:altlokaltecom/core/utils/progress_dialog_utils.dart';
import 'package:altlokaltecom/data/models/list/post_list_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://nodedemo.dhiwise.co";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future<PostListResp> createList(
      {Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post('$url/device/api/v1/user/list',
          headers: headers, body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostListResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostListResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      rethrow;
    }
  }
}
