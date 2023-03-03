import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {


  onInit(){
  
   Get.defaultDialog(
          content: const Center(
        child: CircularProgressIndicator(),
      ));
  // Future<void> delay() async {
     
  //     print('Sttttttttttttttttttart');

  //     await Future.delayed(const Duration(seconds: 5));
  //     print('Ennnnnnnnnnnnnnnnnnnnnnnd');
  //   }
}
    
    myServices.sharedPreferences.clear();
    Get.back();
    Get.toNamed(AppRoute.login);
  }
}
