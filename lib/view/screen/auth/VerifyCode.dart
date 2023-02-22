import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import '../../../controller/Auth/Verify_CodeSignUp.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/titleauth.dart';
import '../../widget/auth/bodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeCodeImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("25".tr, style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GetBuilder<VerifyCodeCodeImp>(
        builder: (controller) => HandlingDataRequest(
          statusreqest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(children: [
              const SizedBox(
                height: 80,
              ),
              customtitleauth(
                title: '24'.tr,
              ),
              custombodyauth(body: "255".tr),
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
                  controller.goToSuccessSignUp(verificationCode);
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
              // formfiledauth(
              //   iconData: Icons.email_outlined,
              //   hintText: "8".tr,
              //   textLable: "7".tr,
              //   mycontroller: controller.email,
              // ),
              // CustombottonAuth(
              //   title: "26".tr,
              //   onPressed: () {
              //     controller.goToSuccessSignUp();
              //   },
              // ),
              const SizedBox(
                height: 22,
              ),
              const logoauth(
                height: 90,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
