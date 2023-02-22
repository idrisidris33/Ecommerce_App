import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customdotcontroller extends StatelessWidget {
  const Customdotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => AnimatedContainer(
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 3000),
                          margin: const EdgeInsets.only(right: 3),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColor.purple,
                                borderRadius: BorderRadius.circular(10)),
                            height: 5,
                            width: controller.currentPage == index ? 20 : 5,
                          ),
                        ))
              ],
            ));
  }
}
