import '../../data/datasource/remote/forgetPassword/ResetPassword.dart';
import '../../core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import '../../core/class_package/statusreqest.dart';
import 'package:flutter/cupertino.dart';
import '../../core/constant/color.dart';
import 'package:get/get.dart';


abstract class ResetPassword extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}






class ResetPasswordImp extends ResetPassword {
  bool? obscureTextpass = true;
    bool? obscureTextrepass = true;
  showPass() {
    obscureTextpass = obscureTextpass == false ? true : false;
    obscureTextrepass = obscureTextrepass == false ? true : false;
    update();
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  StatusReqest statusRequest = StatusReqest.none;
  late TextEditingController password;
  late TextEditingController repassword;
  String? email;
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() async {
    var formdata = formstate.currentState;
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "ERROR", content: const Text("Password Not Match"));
    }
    if (formdata!.validate()) {
      update();
      statusRequest = StatusReqest.loading;
      var response = await resetPasswordData.postdata(
        password.text,
        email!,
      );
      print("===============${response} ===================");
      statusRequest = handlingData(response);
      if (StatusReqest.success == statusRequest) {
        if (response['status'] == 'success') {
          // data.addAll(response['data']);

          Get.offAllNamed(AppRoute.succesresetpassword);
        } else {
          Get.defaultDialog(
              title: "Warning",
              backgroundColor: AppColor.purple,
              content: const Text("TRY AGAIN"));
          statusRequest = StatusReqest.failure;
        }
        update();
      }
    }
  }
}
