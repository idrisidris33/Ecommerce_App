
class CategoriesModel {
  int? cId;
  String? cName;
  String? cNameAr;
  String? cImage;
  String? cDatetime;

  CategoriesModel(
      {this.cId, this.cName, this.cNameAr, this.cImage, this.cDatetime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    cId = json['c_id'];
    cName = json['c_name'];
    cNameAr = json['c_name_ar'];
    cImage = json['c_image'];
    cDatetime = json['c_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['c_id'] = this.cId;
    data['c_name'] = this.cName;
    data['c_name_ar'] = this.cNameAr;
    data['c_image'] = this.cImage;
    data['c_datetime'] = this.cDatetime;
    return data;
  }
}
