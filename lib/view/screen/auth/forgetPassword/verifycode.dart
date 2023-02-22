import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../controller/ForgetPassword/virefycode_controller.dart';
import '../../../widget/auth/bodyauth.dart';

import '../../../widget/auth/titleauth.dart';

class VerfyCodePassword extends StatelessWidget {
  const VerfyCodePassword({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(VerfyCodeControlllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("22".tr, style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GetBuilder<VerfyCodeControlllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusreqest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            child: ListView(children: [
              const logoauth(
                height: 90,
              ),
              const SizedBox(
                height: 30,
              ),
              customtitleauth(
                title: '21'.tr,
              ),
              custombodyauth(body: "22".tr),
              OtpTextField(
                borderRadius: BorderRadius.circular(15),
                fieldWidth: 55,
                borderWidth: 2,
                numberOfFields: 5,
                borderColor: AppColor.purple,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.verfitCode(verificationCode);
                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(
                  //         title: Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //       );
                  //     });
                }, // end onSubmit
              ),
              const SizedBox(
                height: 20,
              ),
              // CustombottonAuth(
              //   title: "200".tr,
              //   onPressed: () {
              //     controller.goToResetPassword();
              //   },
              // ),
              const SizedBox(
                height: 2,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
