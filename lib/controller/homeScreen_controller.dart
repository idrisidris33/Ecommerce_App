import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/Home.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int index);
  gotocheckoutpage();
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> body = const [
    HomePage(),
    Center(
      child: Icon(
        Icons.baby_changing_station,
        color: Colors.redAccent,
      ),
    ),
    Center(
      child: Icon(
        Icons.backpack,
        color: Colors.redAccent,
      ),
    ),
    Center(
      child: Icon(
        Icons.settings_outlined,
        color: Colors.redAccent,
      ),
    ),
  ];
  List<String> textbottom = [
    ///////////////////BottomAppBar////////////////////
    "999".tr,
    "998".tr,
    "997".tr,
    "996".tr,
  ];
  List<IconData> iconbottom = const [
    Icons.home_outlined,
    Icons.new_label_outlined,
    Icons.card_giftcard_outlined,
    Icons.access_alarm,
  ];
  @override
  gotocheckoutpage() {
  Get.toNamed(AppRoute.checkoutPage);
  }

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
