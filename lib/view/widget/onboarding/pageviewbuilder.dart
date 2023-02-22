import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPagechanged(val);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onboardingList[i].title!,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),
                ),
                const SizedBox(height: 70),
                Image.asset(
                  onboardingList[i].image!,
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge  ,
                    )),
              ],
            ));
  }
}
