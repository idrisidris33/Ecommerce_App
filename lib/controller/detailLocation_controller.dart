import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class_package/statusreqest.dart';
import '../core/constant/linkshttp.dart';
import '../data/datasource/remote/location.dart';

class DetailLocationcontroller extends GetxController {
  StatusReqest? statusReqest;
  MyServices myServices = Get.find();
  LocationData locationData = LocationData(Get.find());
  TextEditingController? city;
  TextEditingController? street;
  TextEditingController? name;
  List address = [];
  String? lat;
  String? lang;

  gotoviewaddress() {
    Get.offAllNamed(AppRoute.homeScreen );
  }

  initialData() {
    city = TextEditingController();
    name = TextEditingController();
    street = TextEditingController();
    lat = Get.arguments["lat"];
    lang = Get.arguments["lang"];
  }

  addLocation(
    String name,
    String city,
    String street,
    String lat,
    String lang,
  ) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await locationData.addLocation(
        myServices.sharedPreferences.getString('userid')!,
        name,
        city,
        street,
        lat,
        lang);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        Get.snackbar('Done', 'This Address has been added :)');
      }
    }
    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
