import 'package:ecommerce_app/core/constant/theme.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = englishTheme;  

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? langsharedpref = myServices.sharedPreferences.getString("lang");
    if (langsharedpref == "ar") {
      appTheme = arabicTheme;
      language = const Locale("ar");
    } else if (langsharedpref == "en") {
      appTheme = englishTheme;
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
