import 'package:get/get.dart';

class SignInProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }
}
