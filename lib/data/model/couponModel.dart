class CouponDataModel {
  int? couponId;
  String? couponName;
  int? couponCounte;
  int? couponDescount;
  String? couponExpierdate;

  CouponDataModel(
      {this.couponId,
      this.couponName,
      this.couponCounte,
      this.couponDescount,
      this.couponExpierdate});

  CouponDataModel.fromJson(Map<String, dynamic> json) {
    couponId = json['coupon_id'];
    couponName = json['coupon_name'];
    couponCounte = json['coupon_counte'];
    couponDescount = json['coupon_descount'];
    couponExpierdate = json['coupon_expierdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coupon_id'] = couponId;
    data['coupon_name'] = couponName;
    data['coupon_counte'] = couponCounte;
    data['coupon_descount'] = couponDescount;
    data['coupon_expierdate'] = couponExpierdate;
    return data;
  }
}
