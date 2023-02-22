// ignore_for_file: file_names

import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/data/datasource/remote/Auth/signup.dart';
import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phonenumber;
  signUp();
  goTologin();
}

class SignupControllerImp extends SignupController {
  bool? obscureText = true;
  showPass() {
    obscureText = obscureText == false ? true : false;
    update();
  }

  StatusReqest statusReqest = StatusReqest.none;
  SignupData signupdata = SignupData(Get.find());
  List data = [];
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      print("============${value}============");
    });

    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phonenumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phonenumber.dispose();
    username.dispose();
    super.dispose();
  }

  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      update();
      statusReqest = StatusReqest.loading;
      var response = await signupdata.postdata(
          username.text, password.text, email.text, phonenumber.text);
      print("===============${response} ===================");
      statusReqest = handlingData(response);
      if (StatusReqest.success == statusReqest) {
        if (response['status'] == 'success') {
          // data.addAll(response['data']);
          Get.toNamed(AppRoute.verifycodesignup,
              arguments: {'email': email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              backgroundColor: AppColor.purple,
              content: const Text("Phone Number or Email Alredy Exist"));
          statusReqest = StatusReqest.failure;
        }
        update();
      } else {}
      // Get.delete<signupControllerImp>();
    } else {}
  }

  @override
  goTologin() {
    Get.offNamed(AppRoute.login);
  }
}
