import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../controller/ForgetPassword/forgetpasword.dart';
import '../../../../core/function/validinput.dart';
import '../../../widget/auth/bodyauth.dart';
import '../../../widget/auth/custombottonauth.dart';
import '../../../widget/auth/formfiledauth.dart';
import '../../../widget/auth/titleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("20".tr, style: Theme.of(context).textTheme.headline1),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: const Drawer(),
        body: GetBuilder<ForgetPasswordImp>(
          builder: (controller) => HandlingDataRequest(
            statusreqest: controller.statusReqest,
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
                    keyboardtype: TextInputType.emailAddress,
                    iconData: Icons.email_outlined,
                    hintText: "8".tr,
                    textLable: "7".tr,
                    mycontroller: controller.email,
                    validator: (val) {
                      return validInput(val!, 10, 30, "email");
                    },
                  ),
                  CustombottonAuth(
                    title: "Send",
                    onPressed: () {
                      controller.checkEmail();
                    },
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
