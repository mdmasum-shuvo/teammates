import 'dart:convert';
EmployeeDetailResponse employeeDetailResponseFromJson(String str) => EmployeeDetailResponse.fromJson(json.decode(str));
String employeeDetailResponseToJson(EmployeeDetailResponse data) => json.encode(data.toJson());
class EmployeeDetailResponse {
  EmployeeDetailResponse({
      this.status, 
      this.statusCode, 
      this.message, 
      this.data,});

  EmployeeDetailResponse.fromJson(dynamic json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  num? statusCode;
  String? message;
  Data? data;
EmployeeDetailResponse copyWith({  String? status,
  num? statusCode,
  String? message,
  Data? data,
}) => EmployeeDetailResponse(  status: status ?? this.status,
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
      map['data'] = data?.toJson();
    }
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.employeeId, 
      this.branchId, 
      this.employeeName, 
      this.employeeCode, 
      this.dateOfBirth, 
      this.email, 
      this.nid, 
      this.contactNumber, 
      this.altContactNumber, 
      this.gender, 
      this.bloodGroup, 
      this.fathersName, 
      this.mothersName, 
      this.spouseName, 
      this.presentAddress, 
      this.permanentAddress, 
      this.dateOfJoining, 
      this.designationId, 
      this.departmentId, 
      this.currentSalary, 
      this.ref1, 
      this.refContactNumber, 
      this.ref2, 
      this.ref2ContactNumber, 
      this.status, 
      this.degreeId, 
      this.isTeacher, 
      this.image, 
      this.reason, 
      this.userId, 
      this.imagePath,});

  Data.fromJson(dynamic json) {
    employeeId = json['EmployeeId'];
    branchId = json['BranchId'];
    employeeName = json['EmployeeName'];
    employeeCode = json['EmployeeCode'];
    dateOfBirth = json['DateOfBirth'];
    email = json['Email'];
    nid = json['Nid'];
    contactNumber = json['ContactNumber'];
    altContactNumber = json['AltContactNumber'];
    gender = json['Gender'];
    bloodGroup = json['BloodGroup'];
    fathersName = json['FathersName'];
    mothersName = json['MothersName'];
    spouseName = json['SpouseName'];
    presentAddress = json['PresentAddress'];
    permanentAddress = json['PermanentAddress'];
    dateOfJoining = json['DateOfJoining'];
    designationId = json['DesignationId'];
    departmentId = json['DepartmentId'];
    currentSalary = json['CurrentSalary'];
    ref1 = json['Ref1'];
    refContactNumber = json['RefContactNumber'];
    ref2 = json['Ref2'];
    ref2ContactNumber = json['Ref2ContactNumber'];
    status = json['Status'];
    degreeId = json['DegreeId'];
    isTeacher = json['IsTeacher'];
    image = json['Image'];
    reason = json['Reason'];
    userId = json['UserId'];
    imagePath = json['ImagePath'];
  }
  String? employeeId;
  String? branchId;
  String? employeeName;
  String? employeeCode;
  String? dateOfBirth;
  String? email;
  String? nid;
  String? contactNumber;
  String? altContactNumber;
  String? gender;
  String? bloodGroup;
  String? fathersName;
  String? mothersName;
  String? spouseName;
  String? presentAddress;
  String? permanentAddress;
  String? dateOfJoining;
  String? designationId;
  String? departmentId;
  String? currentSalary;
  String? ref1;
  String? refContactNumber;
  String? ref2;
  String? ref2ContactNumber;
  String? status;
  String? degreeId;
  String? isTeacher;
  String? image;
  String? reason;
  String? userId;
  String? imagePath;
Data copyWith({  String? employeeId,
  String? branchId,
  String? employeeName,
  String? employeeCode,
  String? dateOfBirth,
  String? email,
  String? nid,
  String? contactNumber,
  String? altContactNumber,
  String? gender,
  String? bloodGroup,
  String? fathersName,
  String? mothersName,
  String? spouseName,
  String? presentAddress,
  String? permanentAddress,
  String? dateOfJoining,
  String? designationId,
  String? departmentId,
  String? currentSalary,
  String? ref1,
  String? refContactNumber,
  String? ref2,
  String? ref2ContactNumber,
  String? status,
  String? degreeId,
  String? isTeacher,
  String? image,
  String? reason,
  String? userId,
  String? imagePath,
}) => Data(  employeeId: employeeId ?? this.employeeId,
  branchId: branchId ?? this.branchId,
  employeeName: employeeName ?? this.employeeName,
  employeeCode: employeeCode ?? this.employeeCode,
  dateOfBirth: dateOfBirth ?? this.dateOfBirth,
  email: email ?? this.email,
  nid: nid ?? this.nid,
  contactNumber: contactNumber ?? this.contactNumber,
  altContactNumber: altContactNumber ?? this.altContactNumber,
  gender: gender ?? this.gender,
  bloodGroup: bloodGroup ?? this.bloodGroup,
  fathersName: fathersName ?? this.fathersName,
  mothersName: mothersName ?? this.mothersName,
  spouseName: spouseName ?? this.spouseName,
  presentAddress: presentAddress ?? this.presentAddress,
  permanentAddress: permanentAddress ?? this.permanentAddress,
  dateOfJoining: dateOfJoining ?? this.dateOfJoining,
  designationId: designationId ?? this.designationId,
  departmentId: departmentId ?? this.departmentId,
  currentSalary: currentSalary ?? this.currentSalary,
  ref1: ref1 ?? this.ref1,
  refContactNumber: refContactNumber ?? this.refContactNumber,
  ref2: ref2 ?? this.ref2,
  ref2ContactNumber: ref2ContactNumber ?? this.ref2ContactNumber,
  status: status ?? this.status,
  degreeId: degreeId ?? this.degreeId,
  isTeacher: isTeacher ?? this.isTeacher,
  image: image ?? this.image,
  reason: reason ?? this.reason,
  userId: userId ?? this.userId,
  imagePath: imagePath ?? this.imagePath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['EmployeeId'] = employeeId;
    map['BranchId'] = branchId;
    map['EmployeeName'] = employeeName;
    map['EmployeeCode'] = employeeCode;
    map['DateOfBirth'] = dateOfBirth;
    map['Email'] = email;
    map['Nid'] = nid;
    map['ContactNumber'] = contactNumber;
    map['AltContactNumber'] = altContactNumber;
    map['Gender'] = gender;
    map['BloodGroup'] = bloodGroup;
    map['FathersName'] = fathersName;
    map['MothersName'] = mothersName;
    map['SpouseName'] = spouseName;
    map['PresentAddress'] = presentAddress;
    map['PermanentAddress'] = permanentAddress;
    map['DateOfJoining'] = dateOfJoining;
    map['DesignationId'] = designationId;
    map['DepartmentId'] = departmentId;
    map['CurrentSalary'] = currentSalary;
    map['Ref1'] = ref1;
    map['RefContactNumber'] = refContactNumber;
    map['Ref2'] = ref2;
    map['Ref2ContactNumber'] = ref2ContactNumber;
    map['Status'] = status;
    map['DegreeId'] = degreeId;
    map['IsTeacher'] = isTeacher;
    map['Image'] = image;
    map['Reason'] = reason;
    map['UserId'] = userId;
    map['ImagePath'] = imagePath;
    return map;
  }

}