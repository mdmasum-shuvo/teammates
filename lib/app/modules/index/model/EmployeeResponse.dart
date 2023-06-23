import 'dart:convert';
EmployeeResponse employeeResponseFromJson(String str) => EmployeeResponse.fromJson(json.decode(str));
String employeeResponseToJson(EmployeeResponse data) => json.encode(data.toJson());
class EmployeeResponse {
  EmployeeResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.data,});

  EmployeeResponse.fromJson(dynamic json) {
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
EmployeeResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  List<Data>? data,
}) => EmployeeResponse(  status: status ?? this.status,
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
      this.employeeId, 
      this.employeeName, 
      this.employeeCode, 
      this.email, 
      this.designationName, 
      this.departmentName, 
      this.contactNumber, 
      this.imagePath, 
      this.image,});

  Data.fromJson(dynamic json) {
    employeeId = json['EmployeeId'];
    employeeName = json['EmployeeName'];
    employeeCode = json['EmployeeCode'];
    email = json['Email'];
    designationName = json['DesignationName'];
    departmentName = json['DepartmentName'];
    contactNumber = json['ContactNumber'];
    imagePath = json['ImagePath'];
    image = json['Image'];
  }
  String? employeeId;
  String? employeeName;
  String? employeeCode;
  String? email;
  String? designationName;
  String? departmentName;
  String? contactNumber;
  String? imagePath;
  String? image;
Data copyWith({  String? employeeId,
  String? employeeName,
  String? employeeCode,
  String? email,
  String? designationName,
  String? departmentName,
  String? contactNumber,
  String? imagePath,
  String? image,
}) => Data(  employeeId: employeeId ?? this.employeeId,
  employeeName: employeeName ?? this.employeeName,
  employeeCode: employeeCode ?? this.employeeCode,
  email: email ?? this.email,
  designationName: designationName ?? this.designationName,
  departmentName: departmentName ?? this.departmentName,
  contactNumber: contactNumber ?? this.contactNumber,
  imagePath: imagePath ?? this.imagePath,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['EmployeeId'] = employeeId;
    map['EmployeeName'] = employeeName;
    map['EmployeeCode'] = employeeCode;
    map['Email'] = email;
    map['DesignationName'] = designationName;
    map['DepartmentName'] = departmentName;
    map['ContactNumber'] = contactNumber;
    map['ImagePath'] = imagePath;
    map['Image'] = image;
    return map;
  }

}