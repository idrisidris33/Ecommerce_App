import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyMiddlWare extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
//Language

    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoute.homeScreen);
    }
//Onboarding

    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoute.signup);
    }
  }
}
