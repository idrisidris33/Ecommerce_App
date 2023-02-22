import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/datasource/remote/forgetPassword/checkEmail.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../../core/function/handlingdatacontroller.dart';

abstract class ForgetPassword extends GetxController {
  checkEmail();
   
}

class ForgetPasswordImp extends ForgetPassword {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusReqest statusReqest=StatusReqest.none;
  late TextEditingController email;
  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  

  @override
  checkEmail() async {
    if (formstate.currentState!.validate()) {
      update();
      statusReqest = StatusReqest.loading;
      var response = await checkEmailData.postdata(
        email.text,
      );
      print("===============${response} ===================");
      statusReqest = handlingData(response);
      if (StatusReqest.success == statusReqest) {
        if (response['status'] == 'success') {
          // data.addAll(response['data']);
          Get.toNamed(AppRoute.verfycodepassword, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              backgroundColor: AppColor.purple,
              content: const Text("EMAIL NOT FOUND"));
          statusReqest = StatusReqest.failure;
        }
        update();
      }
    }
  }
}
