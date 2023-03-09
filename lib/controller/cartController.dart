import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());
  late StatusReqest statusReqest;
  MyServices myServices = Get.find();
  int? itemsCount;
  add(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.addToCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(statusReqest);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == "success") {
        // print("///////////////////////////////////////////////////////////");
        // print(response);
        // print("///////////////////////////////////////////////////////////");
        Get.snackbar("Adding", "This items is alredy add in your favorite");
      } else {
        statusReqest == StatusReqest.failure;
      }
    }
  }

  remove(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.removeFromCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        Get.snackbar("Adding", "This items is alredy add in your favorite");
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
  }

  getcountitems(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.countitemincard(
        itemsid, myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        itemsCount = response['data'];
        print("///////////////////////////////////////////////////////////");
        print(itemsCount);
        print("///////////////////////////////////////////////////////////");
        return itemsCount;
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
    }
  }

  delete() {}
  view() {}

  @override
  void onInit() {
    super.onInit();
  }
}
