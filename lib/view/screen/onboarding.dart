import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/core/function/alertexitapp.dart';
import 'package:ecommerce_app/view/widget/onboarding/customdotbottom.dart';
import 'package:ecommerce_app/view/widget/onboarding/pageviewbuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/onboarding/bottononboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: WillPopScope(
         onWillPop: alertExitApp,
            child: SafeArea(
              child: Column(
                children: [
                  const Expanded(
                    flex: 3,
                    child: CustomOnboarding(),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: const [
                          Spacer(),
                          Customdotcontroller(),
                          Spacer(),
                          BottomOnboarding(),
                        ],
                      ))
                ],
              ),
            ),
           ));
  }
}
