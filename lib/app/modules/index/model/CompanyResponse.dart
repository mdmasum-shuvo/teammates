import 'dart:convert';
CompanyResponse companyResponseFromJson(String str) => CompanyResponse.fromJson(json.decode(str));
String companyResponseToJson(CompanyResponse data) => json.encode(data.toJson());
class CompanyResponse {
  CompanyResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.data,});

  CompanyResponse.fromJson(dynamic json) {
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
CompanyResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  List<Data>? data,
}) => CompanyResponse(  status: status ?? this.status,
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
      this.branchId, 
      this.branchName, 
      this.branchCode, 
      this.contactNumber, 
      this.branchAddress, 
      this.isHeadOffice, 
      this.logo, 
      this.landPhone, 
      this.mobile, 
      this.fax, 
      this.email, 
      this.branchOpeningDate, 
      this.startTime, 
      this.endTime, 
      this.year, 
      this.shift, 
      this.medium, 
      this.holiDay,});

  Data.fromJson(dynamic json) {
    branchId = json['BranchId'];
    branchName = json['BranchName'];
    branchCode = json['BranchCode'];
    contactNumber = json['ContactNumber'];
    branchAddress = json['BranchAddress'];
    isHeadOffice = json['IsHeadOffice'];
    logo = json['Logo'];
    landPhone = json['LandPhone'];
    mobile = json['Mobile'];
    fax = json['Fax'];
    email = json['Email'];
    branchOpeningDate = json['BranchOpeningDate'];
    startTime = json['StartTime'];
    endTime = json['EndTime'];
    year = json['Year'];
    shift = json['Shift'];
    medium = json['Medium'];
    holiDay = json['HoliDay'];
  }
  String? branchId;
  String? branchName;
  String? branchCode;
  String? contactNumber;
  String? branchAddress;
  String? isHeadOffice;
  String? logo;
  String? landPhone;
  String? mobile;
  String? fax;
  String? email;
  String? branchOpeningDate;
  String? startTime;
  String? endTime;
  String? year;
  String? shift;
  String? medium;
  String? holiDay;
Data copyWith({  String? branchId,
  String? branchName,
  String? branchCode,
  String? contactNumber,
  String? branchAddress,
  String? isHeadOffice,
  String? logo,
  String? landPhone,
  String? mobile,
  String? fax,
  String? email,
  String? branchOpeningDate,
  String? startTime,
  String? endTime,
  String? year,
  String? shift,
  String? medium,
  String? holiDay,
}) => Data(  branchId: branchId ?? this.branchId,
  branchName: branchName ?? this.branchName,
  branchCode: branchCode ?? this.branchCode,
  contactNumber: contactNumber ?? this.contactNumber,
  branchAddress: branchAddress ?? this.branchAddress,
  isHeadOffice: isHeadOffice ?? this.isHeadOffice,
  logo: logo ?? this.logo,
  landPhone: landPhone ?? this.landPhone,
  mobile: mobile ?? this.mobile,
  fax: fax ?? this.fax,
  email: email ?? this.email,
  branchOpeningDate: branchOpeningDate ?? this.branchOpeningDate,
  startTime: startTime ?? this.startTime,
  endTime: endTime ?? this.endTime,
  year: year ?? this.year,
  shift: shift ?? this.shift,
  medium: medium ?? this.medium,
  holiDay: holiDay ?? this.holiDay,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['BranchId'] = branchId;
    map['BranchName'] = branchName;
    map['BranchCode'] = branchCode;
    map['ContactNumber'] = contactNumber;
    map['BranchAddress'] = branchAddress;
    map['IsHeadOffice'] = isHeadOffice;
    map['Logo'] = logo;
    map['LandPhone'] = landPhone;
    map['Mobile'] = mobile;
    map['Fax'] = fax;
    map['Email'] = email;
    map['BranchOpeningDate'] = branchOpeningDate;
    map['StartTime'] = startTime;
    map['EndTime'] = endTime;
    map['Year'] = year;
    map['Shift'] = shift;
    map['Medium'] = medium;
    map['HoliDay'] = holiDay;
    return map;
  }

}