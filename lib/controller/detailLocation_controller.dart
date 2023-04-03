import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailLocation_controller extends GetxController {
  TextEditingController? city;
  TextEditingController? street;
  TextEditingController? name;

  String? lat;
  String? lang;
  initialData() {
    city = TextEditingController();
    name = TextEditingController();
    street = TextEditingController();
    lat = Get.arguments["lat"];
    lang = Get.arguments["lang"];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
