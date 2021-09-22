class Profileee {
  String? status;
  Data? data;
  String? message;

  Profileee( {this.status, this.data, this.message});

  Profileee.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
    message = json['message'];
  }


}

class Data {
  late int id;
  late String employeeName;
  late int employeeSalary;
  late int employeeAge;
  late String profileImage;

  Data(
      {required this.id,
      required this.employeeName,
      required this.employeeSalary,
      required this.employeeAge,
      required this.profileImage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employee_name'] = this.employeeName;
    data['employee_salary'] = this.employeeSalary;
    data['employee_age'] = this.employeeAge;
    data['profile_image'] = this.profileImage;
    return data;
  }
}
