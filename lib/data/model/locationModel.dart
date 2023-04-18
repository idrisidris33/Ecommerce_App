class LocationModelData {
  String? addressid;
  String? addressUserid;
  String? addressCity;
  String? addressStreet;
  String? addressLat;
  String? addressLang;
  String? addressName;

  LocationModelData(
      {this.addressid,
      this.addressUserid,
      this.addressCity,
      this.addressStreet,
      this.addressLat,
      this.addressLang,
      this.addressName});

  LocationModelData.fromJson(Map<String, dynamic> json) {
    addressid = json['address_id'].toString();
    addressUserid = json['address_userid'].toString();
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    addressLat = json['address_lat'].toString();
    addressLang = json['address_lang'].toString();
    addressName = json['address_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_id'] = addressid;
    data['address_userid'] = addressUserid;
    data['address_city'] = addressCity;
    data['address_street'] = addressStreet;
    data['address_lat'] = addressLat;
    data['address_lang'] = addressLang;
    data['address_name'] = addressName;
    return data;
  }
}
