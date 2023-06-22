import 'dart:convert';
DesignationResponse designationResponseFromJson(String str) => DesignationResponse.fromJson(json.decode(str));
String designationResponseToJson(DesignationResponse data) => json.encode(data.toJson());
class DesignationResponse {
  DesignationResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.data,});

  DesignationResponse.fromJson(dynamic json) {
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
DesignationResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  List<Data>? data,
}) => DesignationResponse(  status: status ?? this.status,
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
      this.designationId, 
      this.designationName,});

  Data.fromJson(dynamic json) {
    designationId = json['DesignationId'];
    designationName = json['DesignationName'];
  }
  String? designationId;
  String? designationName;
Data copyWith({  String? designationId,
  String? designationName,
}) => Data(  designationId: designationId ?? this.designationId,
  designationName: designationName ?? this.designationName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DesignationId'] = designationId;
    map['DesignationName'] = designationName;
    return map;
  }

}