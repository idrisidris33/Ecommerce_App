class ItemsModel {
  int? iId;
  String? iName;
  String? iNameAr;
  String? iDiscripiton;
  String? iDiscripitonAr;
  String? iImage;
  int? iCount;
  int? iActive;
  int? iPrice;
  int? iDiscount;
  String? iDate;
  int? iCategorie;
  String? descountPrice;
  int? cId;
  String? cName;
  String? cNameAr;
  String? cImage;
  String? cDatetime;
  int? favorite;

  ItemsModel({
    this.iId,
    this.iName,
    this.iNameAr,
    this.iDiscripiton,
    this.iDiscripitonAr,
    this.iImage,
    this.iCount,
    this.iActive,
    this.iPrice,
    this.iDiscount,
    this.iDate,
    this.iCategorie,
    this.descountPrice,
    this.cId,
    this.cName,
    this.cNameAr,
    this.cImage,
    this.cDatetime,
    this.favorite,
  });

  ItemsModel.fromJson(Map<String, dynamic> json) {
    iId = json['i_id'];
    iName = json['i_name'];
    iNameAr = json['i_name_ar'];
    iDiscripiton = json['i_discripiton'];
    iDiscripitonAr = json['i_discripiton_ar'];
    iImage = json['i_image'];
    iCount = json['i_count'];
    iActive = json['i_active'];
    iPrice = json['i_price'];
    iDiscount = json['i_discount'];
    iDate = json['i_date'];
    iCategorie = json['i_categorie'];
    descountPrice = json['descount_Price'];
    cId = json['c_id'];
    cName = json['c_name'];
    cNameAr = json['c_name_ar'];
    cImage = json['c_image'];
    cDatetime = json['c_datetime'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['i_id'] = iId;
    data['i_name'] = iName;
    data['i_name_ar'] = iNameAr;
    data['i_discripiton'] = iDiscripiton;
    data['i_discripiton_ar'] = iDiscripitonAr;
    data['i_image'] = iImage;
    data['i_count'] = iCount;
    data['i_active'] = iActive;
    data['i_price'] = iPrice;
    data['i_discount'] = iDiscount;
    data['i_date'] = iDate;
    data['i_categorie'] = iCategorie;
    data['descount_Price'] = descountPrice;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_name_ar'] = cNameAr;
    data['c_image'] = cImage;
    data['c_datetime'] = cDatetime;
    data['favorite'] = favorite;
    return data;
  }
}
