class Login {
  bool status;
  Data data;

  Login({this.status, this.data});

  Login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String driverCode;
  String authCode;

  Data({this.driverCode, this.authCode});

  Data.fromJson(Map<String, dynamic> json) {
    driverCode = json['driver_code'];
    authCode = json['auth_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['driver_code'] = this.driverCode;
    data['auth_code'] = this.authCode;
    return data;
  }
}
