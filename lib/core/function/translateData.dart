import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

translateData(colomnAR, columnEN) {
  MyServices myServices = Get.find();

  // SharedPreferences? sharedPreferences;

  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return colomnAR;
  } else {
    return columnEN;
  }
}
