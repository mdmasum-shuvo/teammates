import 'dart:convert';
ProfileResponse profileResponseFromJson(String str) => ProfileResponse.fromJson(json.decode(str));
String profileResponseToJson(ProfileResponse data) => json.encode(data.toJson());
class ProfileResponse {
  ProfileResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.profile,});

  ProfileResponse.fromJson(dynamic json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    profile = json['data'] != null ? Profile.fromJson(json['data']) : null;
  }
  String? status;
  num? statusCode;
  String? message;
  Profile? profile;
ProfileResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  Profile? profile,
}) => ProfileResponse(  status: status ?? this.status,
  statusCode: statusCode ?? this.statusCode,
  message: message ?? this.message,
  profile: profile ?? this.profile,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['status_code'] = statusCode;
    map['message'] = message;
    if (profile != null) {
      map['data'] = profile?.toJson();
    }
    return map;
  }

}

Profile dataFromJson(String str) => Profile.fromJson(json.decode(str));
String dataToJson(Profile data) => json.encode(data.toJson());
class Profile {
  Profile({
      this.employeeId, 
      this.companyId, 
      this.companyName, 
      this.departmentName, 
      this.employeeName, 
      this.employeeCode, 
      this.dateOfBirth, 
      this.email, 
      this.nid, 
      this.contactNumber, 
      this.bloodGroup, 
      this.fathersName, 
      this.mothersName, 
      this.spouseName, 
      this.presentAddress, 
      this.permanentAddress, 
      this.dateOfJoining, 
      this.designation, 
      this.currentSalary, 
      this.imagePath, 
      this.image,});

  Profile.fromJson(dynamic json) {
    employeeId = json['EmployeeId'];
    companyId = json['CompanyId'];
    companyName = json['CompanyName'];
    departmentName = json['DepartmentName'];
    employeeName = json['EmployeeName'];
    employeeCode = json['EmployeeCode'];
    dateOfBirth = json['DateOfBirth'];
    email = json['Email'];
    nid = json['Nid'];
    contactNumber = json['ContactNumber'];
    bloodGroup = json['BloodGroup'];
    fathersName = json['FathersName'];
    mothersName = json['MothersName'];
    spouseName = json['SpouseName'];
    presentAddress = json['PresentAddress'];
    permanentAddress = json['PermanentAddress'];
    dateOfJoining = json['DateOfJoining'];
    designation = json['Designation'];
    currentSalary = json['CurrentSalary'];
    imagePath = json['ImagePath'];
    image = json['Image'];
  }
  String? employeeId;
  String? companyId;
  String? companyName;
  String? departmentName;
  String? employeeName;
  String? employeeCode;
  String? dateOfBirth;
  String? email;
  String? nid;
  String? contactNumber;
  String? bloodGroup;
  String? fathersName;
  String? mothersName;
  String? spouseName;
  String? presentAddress;
  String? permanentAddress;
  String? dateOfJoining;
  String? designation;
  String? currentSalary;
  String? imagePath;
  String? image;
Profile copyWith({  String? employeeId,
  String? companyId,
  String? companyName,
  String? departmentName,
  String? employeeName,
  String? employeeCode,
  String? dateOfBirth,
  String? email,
  String? nid,
  String? contactNumber,
  String? bloodGroup,
  String? fathersName,
  String? mothersName,
  String? spouseName,
  String? presentAddress,
  String? permanentAddress,
  String? dateOfJoining,
  String? designation,
  String? currentSalary,
  String? imagePath,
  String? image,
}) => Profile(  employeeId: employeeId ?? this.employeeId,
  companyId: companyId ?? this.companyId,
  companyName: companyName ?? this.companyName,
  departmentName: departmentName ?? this.departmentName,
  employeeName: employeeName ?? this.employeeName,
  employeeCode: employeeCode ?? this.employeeCode,
  dateOfBirth: dateOfBirth ?? this.dateOfBirth,
  email: email ?? this.email,
  nid: nid ?? this.nid,
  contactNumber: contactNumber ?? this.contactNumber,
  bloodGroup: bloodGroup ?? this.bloodGroup,
  fathersName: fathersName ?? this.fathersName,
  mothersName: mothersName ?? this.mothersName,
  spouseName: spouseName ?? this.spouseName,
  presentAddress: presentAddress ?? this.presentAddress,
  permanentAddress: permanentAddress ?? this.permanentAddress,
  dateOfJoining: dateOfJoining ?? this.dateOfJoining,
  designation: designation ?? this.designation,
  currentSalary: currentSalary ?? this.currentSalary,
  imagePath: imagePath ?? this.imagePath,
  image: image ?? this.image,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['EmployeeId'] = employeeId;
    map['CompanyId'] = companyId;
    map['CompanyName'] = companyName;
    map['DepartmentName'] = departmentName;
    map['EmployeeName'] = employeeName;
    map['EmployeeCode'] = employeeCode;
    map['DateOfBirth'] = dateOfBirth;
    map['Email'] = email;
    map['Nid'] = nid;
    map['ContactNumber'] = contactNumber;
    map['BloodGroup'] = bloodGroup;
    map['FathersName'] = fathersName;
    map['MothersName'] = mothersName;
    map['SpouseName'] = spouseName;
    map['PresentAddress'] = presentAddress;
    map['PermanentAddress'] = permanentAddress;
    map['DateOfJoining'] = dateOfJoining;
    map['Designation'] = designation;
    map['CurrentSalary'] = currentSalary;
    map['ImagePath'] = imagePath;
    map['Image'] = image;
    return map;
  }

}