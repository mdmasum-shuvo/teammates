import 'dart:convert';

import 'package:get/get.dart';
import 'package:teammates/app/modules/index/model/DepartmentResponse.dart';
import 'package:teammates/app/modules/index/model/DesignationResponse.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class SettingsProvider extends GetConnect {


  Future<DepartmentResponse> departmentList() async {
    var url = "${Constants.baseUrl}/apiEmployee/department_list";

    print("login url $url");
    final response =
    await get(url,  headers: Constants.headers);
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
      return DepartmentResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
  Future<DesignationResponse> designationList() async {
    var url = "${Constants.baseUrl}/apiEmployee/designation_list";
    print("login url $url");
    final response =
    await get(url,headers: Constants.headers);
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
      return DesignationResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
  Future<DepartmentResponse> companyList() async {
    var url = "${Constants.baseUrl}/apiEmployee/company_list";
    print("login url $url");
    final response =
    await get(url,headers: Constants.headers);
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
      return DepartmentResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
}
