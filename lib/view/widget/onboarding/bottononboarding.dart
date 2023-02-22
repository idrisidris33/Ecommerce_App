import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomOnboarding extends GetView<OnBoardingControllerImp> {
  const BottomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: SizedBox(
        child: MaterialButton(
          color: AppColor.purple,
          minWidth: 200,
          height: 40,
          onPressed: () {
            controller.next();
          },
          child: Text("3".tr, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
