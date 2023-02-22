import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/view/widget/language/languagebotton.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  Language({super.key});
  MyServices myServices = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: const TextStyle(fontFamily: "Cairo", fontSize: 27),
            ),
            const SizedBox(
              height: 30,
            ),
            LanguageBotton(
              onPressed: () {
                controller.changelang('ar');
                myServices.sharedPreferences.setString("step", "1");
                Get.offAllNamed(AppRoute.signup);
              },
              textbotton: 'Ar',
            ),
            LanguageBotton(
              onPressed: () {
                controller.changelang("en");
                myServices.sharedPreferences.setString("step", "1");
                Get.toNamed(AppRoute.signup);
              },
              textbotton: 'En',
            ),
            // MaterialButton(
            //     child: Text("3".tr),
            //     onPressed: () {
            //       Get.offAllNamed(AppRoute.signup);
            //     })
          ],
        ),
      ),
    );
  }
}
