class ItemsModel {
  int? _iId;
  String? _iName;
  String? _iNameAr;
  String? _iDiscripiton;
  String? _iDiscripitonAr;
  String? _iImage;
  int? _iCount;
  int? _iActive;
  int? _iPrice;
  int? _iDiscount;
  String? _iDate;
  int? _iCategorie;
  int? _cId;
  String? _cName;
  String? _cNameAr;
  String? _cImage;
  String? _cDatetime;

  ItemsModel(
      {int? iId,
      String? iName,
      String? iNameAr,
      String? iDiscripiton,
      String? iDiscripitonAr,
      String? iImage,
      int? iCount,
      int? iActive,
      int? iPrice,
      int? iDiscount,
      String? iDate,
      int? iCategorie,
      int? cId,
      String? cName,
      String? cNameAr,
      String? cImage,
      String? cDatetime}) {
    if (iId != null) {
      this._iId = iId;
    }
    if (iName != null) {
      this._iName = iName;
    }
    if (iNameAr != null) {
      this._iNameAr = iNameAr;
    }
    if (iDiscripiton != null) {
      this._iDiscripiton = iDiscripiton;
    }
    if (iDiscripitonAr != null) {
      this._iDiscripitonAr = iDiscripitonAr;
    }
    if (iImage != null) {
      this._iImage = iImage;
    }
    if (iCount != null) {
      this._iCount = iCount;
    }
    if (iActive != null) {
      this._iActive = iActive;
    }
    if (iPrice != null) {
      this._iPrice = iPrice;
    }
    if (iDiscount != null) {
      this._iDiscount = iDiscount;
    }
    if (iDate != null) {
      this._iDate = iDate;
    }
    if (iCategorie != null) {
      this._iCategorie = iCategorie;
    }
    if (cId != null) {
      this._cId = cId;
    }
    if (cName != null) {
      this._cName = cName;
    }
    if (cNameAr != null) {
      this._cNameAr = cNameAr;
    }
    if (cImage != null) {
      this._cImage = cImage;
    }
    if (cDatetime != null) {
      this._cDatetime = cDatetime;
    }
  }

  int? get iId => _iId;
  set iId(int? iId) => _iId = iId;
  String? get iName => _iName;
  set iName(String? iName) => _iName = iName;
  String? get iNameAr => _iNameAr;
  set iNameAr(String? iNameAr) => _iNameAr = iNameAr;
  String? get iDiscripiton => _iDiscripiton;
  set iDiscripiton(String? iDiscripiton) => _iDiscripiton = iDiscripiton;
  String? get iDiscripitonAr => _iDiscripitonAr;
  set iDiscripitonAr(String? iDiscripitonAr) =>
      _iDiscripitonAr = iDiscripitonAr;
  String? get iImage => _iImage;
  set iImage(String? iImage) => _iImage = iImage;
  int? get iCount => _iCount;
  set iCount(int? iCount) => _iCount = iCount;
  int? get iActive => _iActive;
  set iActive(int? iActive) => _iActive = iActive;
  int? get iPrice => _iPrice;
  set iPrice(int? iPrice) => _iPrice = iPrice;
  int? get iDiscount => _iDiscount;
  set iDiscount(int? iDiscount) => _iDiscount = iDiscount;
  String? get iDate => _iDate;
  set iDate(String? iDate) => _iDate = iDate;
  int? get iCategorie => _iCategorie;
  set iCategorie(int? iCategorie) => _iCategorie = iCategorie;
  int? get cId => _cId;
  set cId(int? cId) => _cId = cId;
  String? get cName => _cName;
  set cName(String? cName) => _cName = cName;
  String? get cNameAr => _cNameAr;
  set cNameAr(String? cNameAr) => _cNameAr = cNameAr;
  String? get cImage => _cImage;
  set cImage(String? cImage) => _cImage = cImage;
  String? get cDatetime => _cDatetime;
  set cDatetime(String? cDatetime) => _cDatetime = cDatetime;

  ItemsModel.fromJson(Map<String, dynamic> json) {
    _iId = json['i_id'];
    _iName = json['i_name'];
    _iNameAr = json['i_name_ar'];
    _iDiscripiton = json['i_discripiton'];
    _iDiscripitonAr = json['i_discripiton_ar'];
    _iImage = json['i_image'];
    _iCount = json['i_count'];
    _iActive = json['i_active'];
    _iPrice = json['i_price'];
    _iDiscount = json['i_discount'];
    _iDate = json['i_date'];
    _iCategorie = json['i_categorie'];
    _cId = json['c_id'];
    _cName = json['c_name'];
    _cNameAr = json['c_name_ar'];
    _cImage = json['c_image'];
    _cDatetime = json['c_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_id'] = this._iId;
    data['i_name'] = this._iName;
    data['i_name_ar'] = this._iNameAr;
    data['i_discripiton'] = this._iDiscripiton;
    data['i_discripiton_ar'] = this._iDiscripitonAr;
    data['i_image'] = this._iImage;
    data['i_count'] = this._iCount;
    data['i_active'] = this._iActive;
    data['i_price'] = this._iPrice;
    data['i_discount'] = this._iDiscount;
    data['i_date'] = this._iDate;
    data['i_categorie'] = this._iCategorie;
    data['c_id'] = this._cId;
    data['c_name'] = this._cName;
    data['c_name_ar'] = this._cNameAr;
    data['c_image'] = this._cImage;
    data['c_datetime'] = this._cDatetime;
    return data;
  }
}
