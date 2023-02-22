import 'package:ecommerce_app/controller/Auth/loginController.dart';
import 'package:ecommerce_app/core/function/alertexitapp.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import '../../../core/class_package/HandlingData_view.dart';
import '../../widget/auth/customtextSignInorSignUp.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../../core/function/validinput.dart';
import '../../widget/auth/formfiledauth.dart';
import '../../widget/auth/titleauth.dart';
import '../../widget/auth/bodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("5".tr, style: Theme.of(context).textTheme.headline1),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataRequest(
                  statusreqest: controller.statusReqest,
                  widget: WillPopScope(
                    onWillPop: alertExitApp,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              const logoauth(
                                height: 160,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              customtitleauth(
                                title: '2'.tr,
                              ),
                              custombodyauth(body: "4".tr),
                              formfiledauth(
                                validator: (val) {
                                  return validInput(val!, 10, 30, "email");
                                },
                                keyboardtype: TextInputType.emailAddress,
                                iconData: Icons.email_outlined,
                                hintText: "8".tr,
                                textLable: "7".tr,
                                mycontroller: controller.email,
                              ),
                              GetBuilder<LoginControllerImp>(
                                builder: (controller) => formfiledauth(
                                  obscureText: controller.obscureText,
                                  ontapIcon: () {
                                    controller.showPass();
                                  },
                                  validator: (val) {
                                    return validInput(val!, 8, 18, "password");
                                  },
                                  keyboardtype: TextInputType.visiblePassword,
                                  iconData: Icons.lock_outline,
                                  hintText: "10".tr,
                                  textLable: "9".tr,
                                  mycontroller: controller.password,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.goToForgetpassword();
                                },
                                child: Text(
                                  "15".tr,
                                  textAlign: TextAlign.end,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              CustombottonAuth(
                                title: "5".tr,
                                onPressed: () {
                                  controller.login();
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextSignInorSignUp(
                                onTap: () {
                                  controller.goToSignUp();
                                },
                                text1: "16".tr,
                                text2: "5".tr,
                              ),
                            ]),
                      ),
                    ),
                  ),
                )));
  }
}
