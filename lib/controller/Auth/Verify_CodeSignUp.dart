import 'package:ecommerce_app/data/datasource/remote/Auth/verfiycodesignupData.dart';
import 'package:flutter/material.dart';
import '../../core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import '../../core/class_package/statusreqest.dart';
import 'package:get/get.dart';

abstract class VerifyCodeCode extends GetxController {
  goToSuccessSignUp(String verifycodesignup);
  resendccode();
}

class VerifyCodeCodeImp extends VerifyCodeCode {
  // late TextEditingController email;
  VerfiycodeSignupData verfiycodeSignupData = VerfiycodeSignupData(Get.find());

  StatusReqest statusRequest = StatusReqest.none;
  String? email;

  @override
  void onInit() {
    email = Get.arguments['email'];
    // email = TextEditingController();
    super.onInit();
  }

  @override
  goToSuccessSignUp(verifycodesignup) async {
    statusRequest = StatusReqest.loading;
    update();
    var response =
        await verfiycodeSignupData.postdata(email!, verifycodesignup);
    statusRequest = handlingData(response);
    if (StatusReqest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successsignup);
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusReqest.failure;
      }
    }
    update();
  }

  @override
  resendccode() {
    verfiycodeSignupData.resenddata(
      email!,
    );
    Get.rawSnackbar(
        title: "Resend",
        messageText: const Text("check your email to get new Code"));
  }
}
