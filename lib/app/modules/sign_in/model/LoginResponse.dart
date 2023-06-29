import 'dart:convert';
LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.user, 
      this.token,});

  LoginResponse.fromJson(dynamic json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? status;
  num? statusCode;
  String? message;
  User? user;
  String? token;
LoginResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  User? user,
  String? token,
}) => LoginResponse(  status: status ?? this.status,
  statusCode: statusCode ?? this.statusCode,
  message: message ?? this.message,
  user: user ?? this.user,
  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['status_code'] = statusCode;
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      this.employeeId, 
      this.branchId, 
      this.userName, 
      this.roleId, 
      this.name, 
      this.isHeadOffice,});

  User.fromJson(dynamic json) {
    employeeId = json['EmployeeId'];
    branchId = json['BranchId'];
    userName = json['user_name'];
    roleId = json['role_id'];
    name = json['name'];
    isHeadOffice = json['IsHeadOffice'];
  }
  String? employeeId;
  String? branchId;
  String? userName;
  String? roleId;
  String? name;
  String? isHeadOffice;
User copyWith({  String? employeeId,
  String? branchId,
  String? userName,
  String? roleId,
  String? name,
  String? isHeadOffice,
}) => User(  employeeId: employeeId ?? this.employeeId,
  branchId: branchId ?? this.branchId,
  userName: userName ?? this.userName,
  roleId: roleId ?? this.roleId,
  name: name ?? this.name,
  isHeadOffice: isHeadOffice ?? this.isHeadOffice,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['EmployeeId'] = employeeId;
    map['BranchId'] = branchId;
    map['user_name'] = userName;
    map['role_id'] = roleId;
    map['name'] = name;
    map['IsHeadOffice'] = isHeadOffice;
    return map;
  }

}