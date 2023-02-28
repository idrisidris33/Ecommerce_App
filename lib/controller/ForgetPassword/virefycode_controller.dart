import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/function/handlingdatacontroller.dart';
import '../../data/datasource/remote/forgetPassword/verfiyCodeData.dart';

abstract class VerfyCodeControlller extends GetxController {
  verfitCode(String verifycodepassword);
}

class VerfyCodeControlllerImp extends VerfyCodeControlller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  VerfiycodepasswordData verfiycodepasswordData =
      VerfiycodepasswordData(Get.find());
     StatusReqest statusRequest = StatusReqest.none;
  String? email;
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  verfitCode(verifycodepassword) async{
   statusRequest = StatusReqest.loading;
    update();
    var response =
        await verfiycodepasswordData.postdata(email!, verifycodepassword);
    statusRequest = handlingData(response);
    if (StatusReqest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword,arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusReqest.failure;
      }
    }
    update();
    //  statusRequest = StatusReqest.loading;
    // update();
    // var response =
    //     await verfiycodepasswordData.postdata(email!, verifycodepassword);
    //     print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<${response}>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    // statusRequest = handlingData(response);
    // if (StatusReqest.success == statusRequest) {
    //   if (response['status'] == "success") {
    //     Get.offNamed(AppRoute.resetPassword , arguments: {
    //       "email" : email
    //     });
    //   } else {
    //     Get.defaultDialog(
    //         title: "ُWarning", middleText: "Verify Code Not Correct");
    //     statusRequest = StatusReqest.failure;
    //   }
    // }
    // update();
  }
}
