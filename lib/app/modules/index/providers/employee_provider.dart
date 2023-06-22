import 'dart:convert';

import 'package:get/get.dart';
import 'package:teammates/app/modules/index/model/EmployeeDetailResponse.dart';
import 'package:teammates/app/modules/index/model/EmployeeResponse.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class EmployeeProvider extends GetConnect {

  Future<EmployeeResponse> employeeList(String? company, String? department,
      String? designation, String? code) async {
    var url = "${Constants.baseUrl}/apiEmployee/employee_list";
    Map<String, String?> qParams = {
      'company_id': null,
    };
    print("login url $url");
    final response =
        await get(url, query: qParams, headers: Constants.headers);
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

      return EmployeeResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<EmployeeResponse> employeeRecentHistory() async {
    var url = "${Constants.baseUrl}/apiEmployee/recent_list";
    Map<String, String?> qParams = {
      'company_id': null,
    };
    print("login url $url");
    final response =
        await get(url, query: qParams, headers: Constants.headers);
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

      return EmployeeResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
  Future<EmployeeResponse> favoriteEmployeeList() async {
    var url = "${Constants.baseUrl}/apiEmployee/favourite_list";
    Map<String, String?> qParams = {
      'company_id': null,
    };
    print("login url $url");
    final response =
        await get(url, query: qParams, headers: Constants.headers);
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

      return EmployeeResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


  Future<EmployeeDetailResponse> employeeDetail(String id) async {
    var url = "${Constants.baseUrl}/apiEmployee/employee_details";
    Map<String, String> qParams = {
      'id': id,
    };
    print("login url $url");
    final response =
        await get(url, query: qParams, headers: Constants.headers);
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

      return EmployeeDetailResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
}
