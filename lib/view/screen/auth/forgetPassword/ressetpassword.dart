import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/function/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/ForgetPassword/resetpassword_controller.dart';
import '../../../widget/auth/bodyauth.dart';
import '../../../widget/auth/custombottonauth.dart';
import '../../../widget/auth/formfiledauth.dart';
import '../../../widget/auth/titleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ResetPasswordImp controller = Get.put(ResetPasswordImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("23".tr, style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GetBuilder<ResetPasswordImp>(
        builder: (controller) => HandlingDataRequest(
          statusreqest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            child: Form(
              key: controller.formstate,
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
                custombodyauth(body: "211".tr),
                formfiledauth(
                  obscureText: controller.obscureTextpass,
                  ontapIcon: (() {
                    controller.showPass();
                  }),
                  validator: (val) {
                    return validInput(val!, 8, 18, "password");
                  },
                  keyboardtype: TextInputType.visiblePassword,
                  iconData: Icons.lock_outline,
                  hintText: "10".tr,
                  textLable: "9".tr,
                  mycontroller: controller.password,
                ),
                formfiledauth(
                  obscureText: controller.obscureTextrepass,
                  ontapIcon: (() {
                    controller.showPass();
                  }),
                  validator: (val) {
                    return validInput(val!, 8, 18, "password");
                  },
                  keyboardtype: TextInputType.visiblePassword,
                  iconData: Icons.lock_outline,
                  hintText: "100".tr,
                  textLable: "9".tr,
                  mycontroller: controller.repassword,
                ),
                CustombottonAuth(
                  title: "200".tr,
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  },
                ),
                const SizedBox(
                  height: 2,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
