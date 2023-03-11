class CardDetailModel {
  String? sumprice;
  int? countitem;
  int? cardId;
  int? cardUserid;
  int? cardItemid;
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

  CardDetailModel(
      {this.sumprice,
      this.countitem,
      this.cardId,
      this.cardUserid,
      this.cardItemid,
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
      this.iCategorie});

  CardDetailModel.fromJson(Map<String, dynamic> json) {
    sumprice = json['sumprice'];
    countitem = json['countitem'];
    cardId = json['card_id'];
    cardUserid = json['card_userid'];
    cardItemid = json['card_itemid'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sumprice'] = sumprice;
    data['countitem'] = countitem;
    data['card_id'] = cardId;
    data['card_userid'] = cardUserid;
    data['card_itemid'] = cardItemid;
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
    return data;
  }
}
