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
      this.id, 
      this.userName, 
      this.branchId, 
      this.employeeId, 
      this.roleId, 
      this.name,});

  User.fromJson(dynamic json) {
    id = json['id'];
    userName = json['user_name'];
    branchId = json['BranchId'];
    employeeId = json['EmployeeId'];
    roleId = json['role_id'];
    name = json['name'];
  }
  String? id;
  String? userName;
  String? branchId;
  String? employeeId;
  String? roleId;
  String? name;
User copyWith({  String? id,
  String? userName,
  String? branchId,
  String? employeeId,
  String? roleId,
  String? name,
}) => User(  id: id ?? this.id,
  userName: userName ?? this.userName,
  branchId: branchId ?? this.branchId,
  employeeId: employeeId ?? this.employeeId,
  roleId: roleId ?? this.roleId,
  name: name ?? this.name,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_name'] = userName;
    map['BranchId'] = branchId;
    map['EmployeeId'] = employeeId;
    map['role_id'] = roleId;
    map['name'] = name;
    return map;
  }

}