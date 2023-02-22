import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccesResetPasswordController extends GetxController{
goToLoginPage();
}
class SuccesResetPasswordControllerImp extends SuccesResetPasswordController{
GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  goToLoginPage() {
     Get.offAllNamed(AppRoute.login);
     
  }

}