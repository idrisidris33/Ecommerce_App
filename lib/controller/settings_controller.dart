import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();
  goLocation() {
    Get.toNamed(AppRoute.viewLocation);
  }

  goAddLocation() {
    Get.toNamed(AppRoute.addLocation);
  }

  logout() {
    /////////////////////////////Make Loading//////////////////////////////
    Get.dialog(const Center(child: CircularProgressIndicator()));
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(AppRoute.login);
    });
    myServices.sharedPreferences.clear();
  }
}
