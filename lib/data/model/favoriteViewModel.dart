class FavoriteViewModel {
  int? favId;
  int? favItemsId;
  int? favUsersId;
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
  int? uId;

  FavoriteViewModel(
      {this.favId,
      this.favItemsId,
      this.favUsersId,
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
      this.uId});

  FavoriteViewModel.fromJson(Map<String, dynamic> json) {
    favId = json['fav_id'];
    favItemsId = json['fav_itemsId'];
    favUsersId = json['fav_usersId'];
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
    uId = json['u_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   Map<String, dynamic>();
    data['fav_id'] = favId;
    data['fav_itemsId'] = favItemsId;
    data['fav_usersId'] = favUsersId;
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
    data['u_id'] = uId;
    return data;
  }
}
