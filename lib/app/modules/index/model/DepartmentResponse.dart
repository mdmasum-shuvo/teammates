import 'dart:convert';
DepartmentResponse departmentResponseFromJson(String str) => DepartmentResponse.fromJson(json.decode(str));
String departmentResponseToJson(DepartmentResponse data) => json.encode(data.toJson());
class DepartmentResponse {
  DepartmentResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.data,});

  DepartmentResponse.fromJson(dynamic json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  num? statusCode;
  String? message;
  List<Data>? data;
DepartmentResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  List<Data>? data,
}) => DepartmentResponse(  status: status ?? this.status,
  statusCode: statusCode ?? this.statusCode,
  message: message ?? this.message,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['status_code'] = statusCode;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.departmentId, 
      this.departmentName,});

  Data.fromJson(dynamic json) {
    departmentId = json['DepartmentId'];
    departmentName = json['DepartmentName'];
  }
  String? departmentId;
  String? departmentName;
Data copyWith({  String? departmentId,
  String? departmentName,
}) => Data(  departmentId: departmentId ?? this.departmentId,
  departmentName: departmentName ?? this.departmentName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DepartmentId'] = departmentId;
    map['DepartmentName'] = departmentName;
    return map;
  }

}