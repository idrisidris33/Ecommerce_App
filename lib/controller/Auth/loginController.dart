import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/Auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/function/handlingdatacontroller.dart';

abstract class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  login();
  goToSignUp();
  goToForgetpassword();
}

class LoginControllerImp extends LoginController {
  MyServices myServices = Get.find();
  LoginData logindata = LoginData(Get.find());
  bool? obscureText = true;
  StatusReqest statusReqest = StatusReqest.none;

  showPass() {
    obscureText = obscureText == false ? true : false;
    update();
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusReqest = StatusReqest.loading;
      update();
      var response = await logindata.postdata(
        email.text,
        password.text,
      );
      // print(
      //     "/////////////===============${response["data"]} ===================////////////");
      statusReqest = handlingData(response);
      update();
      if (StatusReqest.success == statusReqest) {
        if (response['status'] == 'success') {
          if (response['data']["u_approve"] == 1) {
            myServices.sharedPreferences
                .setString("username", response['data']["u_name"]);
            myServices.sharedPreferences
                .setString("useremail", response['data']["u_email"]);
            myServices.sharedPreferences
                .setString("userphone", response['data']["u_phone"]);
            myServices.sharedPreferences
                .setString("userid", response['data']["u_id"].toString());
            myServices.sharedPreferences.setString("step", "2");
            // data.addAll(response['data']);
            Get.offNamed(
              AppRoute.homeScreen,
            );
          } else {
            Get.toNamed(AppRoute.verifycodesignup,
                arguments: {"email": email.text});
          }
        } else {
          Get.defaultDialog(
              title: "Warning",
              backgroundColor: AppColor.purple,
              content: const Text("EMAIL OR PASSWORD NOT CORRECT"));
          statusReqest = StatusReqest.failure;
        }
        update();
      } else {}

      // Get.delete<signupControllerImp>();
    } else {}
  }

  @override
  goToForgetpassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }
}
