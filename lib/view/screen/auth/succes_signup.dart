import 'package:ecommerce_app/controller/Auth/succesSignUp_controller.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/view/widget/auth/custombottonauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:lottie/lottie.dart';
import '../../widget/auth/bodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SuccesSignUpControllerImp controller = Get.put(SuccesSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("266".tr, style: Theme.of(context).textTheme.displayLarge),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: ListView(children: [
          Lottie.asset(
            AppImageAsset.successlottie,
            reverse: true,
            repeat: false,
          ),
          // const logoauth(
          //   height: 90,
          // ),
          const SizedBox(
            height: 15,
          ),

          const SizedBox(
            height: 40,
          ),
          // customtitleauth(
          //   title: '266'.tr,
          // ),

          custombodyauth(
            body: '29'.tr,
          ),

          CustombottonAuth(
            title: "28".tr,
            onPressed: (() {
              controller.goToPageLogin();
            }),
          ),
          const SizedBox(
            height: 40,
          ),
          const logoauth(
            height: 90,
          ),
        ]),
      ),
    );
  }
}
