import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/card.dart';
import 'package:ecommerce_app/data/model/cardDetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/couponModel.dart';

class CartController extends GetxController {
  // ItemsDetailsCont itemsDetailsCont = Get.put(ItemsDetailsContImp());

  CartData cartData = CartData(Get.find());
  late StatusReqest statusReqest;
  MyServices myServices = Get.find();
  CardDetailModel cardDetailModel = CardDetailModel();
  CouponDataModel couponDataModel = CouponDataModel();
  late TextEditingController couponController;
  List<CardDetailModel> itemscard = [];
  double sumprice = 0.0;
  int? sumitems;
  // int countitem = 0;
  int? itemsCount;
  int descountCoupon = 0;
  String? nameCoupon;

  goTochekOut() {
    Get.toNamed(AppRoute.checkout, arguments: {
      "totalprice": afterCoupon(),
      "namecoupon": nameCoupon,
    });
  }

  afterCoupon() {
    return sumprice - (sumprice * descountCoupon / 100);
  }

  checkCoupon() async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.checkCoupon(couponController.text);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        Map<String, dynamic> dataCoupon = response['data'];
        couponDataModel = CouponDataModel.fromJson(dataCoupon);
        descountCoupon = int.parse('${couponDataModel.couponDescount}');
        nameCoupon = '${couponDataModel.couponName}';
        print("================================");
        print("successsssssss");
        print("================================");
        print("================================");
      } else {
        // Get.snackbar('fhhf', 'fsdfds').show();
        couponController.clear();
        nameCoupon = "";
        descountCoupon = 0;
        // statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  getcountitems(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.countitemincard(
        itemsid, myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        itemsCount = response['data'];
        // print("///////////////////////////////////////////////////////////");
        // print(itemsCount);
        // print("///////////////////////////////////////////////////////////");
        return itemsCount;
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
    }
  }

  add(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.addToCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == "success") {
        // Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest == StatusReqest.failure;
      }
    }
    update();
  }

  remove(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.removeFromCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        // Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  view() async {
    // refreshPage();
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData
        .viewCardItem(myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      if (response['status'] == 'success') {
        // print("//////////////////////////////////////////////////////");
        // print(response);
        // print("//////////////////////////////////////////////////////");
        if (response['datacard']['status'] == 'success') {
          Map sumitemprice = response['datasum'];
          List dataresponse = response['datacard']['data'];
          itemscard.clear();
          itemscard
              .addAll(dataresponse.map((e) => CardDetailModel.fromJson(e)));
          sumitems = sumitemprice['totalitem'];
          sumprice = double.parse(sumitemprice['totalprice']);
        }
      }
    }
    update();
  }

  // resetVarCart() {
  //   sumitems = 0;
  //   sumprice = 0.0;
  //   itemscard.clear();

  // }

  refreshPage() async {
    // resetVarCart();
    await view();
  }

  @override
  void onInit() async {
    couponController = TextEditingController();
    // itemsCount = await getcountitems(cardDetailModel.iId.toString());
    view();
    super.onInit();
  }

  @override
  void dispose() {
    couponController.dispose();
    super.dispose();
  }

  delete() {}

  // onAdd() {
  //   add(cardDetailModel.iId.toString());
  //   countitem++;
  //   update();
  // }

  // onRemove() {
  //   if (countitem > 0) {
  //     remove(cardDetailModel.iId.toString());
  //     countitem--;
  //     update();
  //   }
  // }
}
