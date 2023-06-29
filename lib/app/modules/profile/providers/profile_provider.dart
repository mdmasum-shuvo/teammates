import 'dart:convert';

import 'package:contactbook/app/modules/profile/model/ProfileResponse.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class ProfileProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ProfileResponse> profile() async {
    var url = "${Constants.baseUrl}/user/profile";

    print("login url $url");
    final response = await get(url, headers: Constants.headers);
    if (response.status.hasError) {
      String message = "Something went wrong!";
      try {
        message =
        ErrorResponse.fromJson(jsonDecode(response.bodyString!)).message!;
      } catch (e) {
        print(e);
      }

      Utils.showProviderError(response.statusCode, message);
      return Future.error(response.bodyString!);
    } else {
      print(response.body);
      return ProfileResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

}
