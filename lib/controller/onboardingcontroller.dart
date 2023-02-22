import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
 

abstract class OnBoardingController extends GetxController {
  next();
  onPagechanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
 
  @override
  next() {
    currentPage++;
    if (currentPage > onboardingList.length - 1) {

      Get.offAllNamed(AppRoute.language);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
    }
  }

  @override
  onPagechanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
