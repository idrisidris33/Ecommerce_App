import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccesSignUpController extends GetxController {
  goToPageLogin();
}

class SuccesSignUpControllerImp extends SuccesSignUpController {
GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
