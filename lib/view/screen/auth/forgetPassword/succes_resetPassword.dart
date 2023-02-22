import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/ForgetPassword/SuccesResetPassword_cntroller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/bodyauth.dart';
import '../../../widget/auth/custombottonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    SuccesResetPasswordControllerImp controller =
        Get.put(SuccesResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("27".tr, style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(children: [
          // const logoauth(
          //   height: 90,
          // ),
          const SizedBox(
            height: 30,
          ),

          const Center(
            child: Icon(
              Icons.check_circle_outline_outlined,
              size: 130,
              color: AppColor.purple,
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          // customtitleauth(
          //   title: '266'.tr,
          // ),

          custombodyauth(body: "155".tr),

          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustombottonAuth(
              title: "28".tr,
              onPressed: (() {
                controller.goToLoginPage();
              }),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          // formfiledauth(
          //   iconData: Icons.email_outlined,
          //   hintText: "8".tr,
          //   textLable: "7".tr,
          //    mycontroller: controller.email,
          // ),
          // CustombottonAuth(
          //   title: "200".tr,
          //   onPressed: () {
          //   },
          // ),

          const SizedBox(
            height: 2,
          ),
        ]),
      ),
    );
  }
}
