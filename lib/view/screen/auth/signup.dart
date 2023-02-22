import 'package:ecommerce_app/controller/Auth/signUpController.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/core/function/validinput.dart';
import '../../../core/class_package/HandlingData_view.dart';
import '../../widget/auth/customtextSignInorSignUp.dart';
import '../../../core/function/alertexitapp.dart';
import '../../widget/auth/custombottonauth.dart';
import '../../widget/auth/formfiledauth.dart';
import '../../widget/auth/titleauth.dart';
import '../../widget/auth/bodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customtitleauth(
          title: '6'.tr,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignupControllerImp>(
            builder: (
          controller,
        ) =>
                HandlingDataRequest(
                  statusreqest: controller.statusReqest,
                  widget: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 35),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                          physics:const BouncingScrollPhysics(),
                          shrinkWrap: false,
                          children: [
                            const logoauth(
                              height: 90,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            customtitleauth(
                              title: '2'.tr,
                            ),
                            custombodyauth(
                              body: "4".tr,
                            ),
                            formfiledauth(
                              validator: (val) {
                                return validInput(val!, 5, 12, "username");
                              },
                              keyboardtype: TextInputType.name,
                              iconData: Icons.person_outline,
                              hintText: "188".tr,
                              textLable: "18".tr,
                              mycontroller: controller.username,
                            ),
                            formfiledauth(
                              validator: (val) {
                                return validInput(val!, 5, 12, "number");
                              },
                              keyboardtype: TextInputType.phone,
                              iconData: Icons.phone_outlined,
                              hintText: "199".tr,
                              textLable: "19".tr,
                              mycontroller: controller.phonenumber,
                            ),
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
                            formfiledauth(
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
                            CustombottonAuth(
                              title: "6".tr,
                              onPressed: () {
                                controller.signUp();
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextSignInorSignUp(
                              onTap: () {
                                controller.goTologin();
                              },
                              text1: "16".tr,
                              text2: "5".tr,
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ]),
                    ),
                  ),
                )),
      ),
    );
  }
}
