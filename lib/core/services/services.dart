import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    // if (kIsWeb) {
    //   await Firebase.initializeApp(
    //       options: const FirebaseOptions(
    //           apiKey: "AIzaSyC5FZpy-RmSzVnaqUMk_YZIMeJxs2vsdho",
    //           appId: "1:161306001915:web:266a474c9066b7e63b0b5e",
    //           messagingSenderId: "161306001915",
    //           projectId: "ecommerce-a4156"));
    // } else {
    //   await Firebase.initializeApp();
    // }

    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
