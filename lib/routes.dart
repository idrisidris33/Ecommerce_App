import 'package:ecommerce_app/view/screen/Home.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/middleware/mymiddlewar.dart';
import 'package:ecommerce_app/view/screen/HomeScreen.dart';

import 'package:ecommerce_app/view/screen/auth/VerifyCode.dart';

import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/succes_resetPassword.dart';
import 'package:ecommerce_app/languages.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/ressetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verifycode.dart';
import 'package:ecommerce_app/view/screen/auth/succes_signup.dart';
import 'package:ecommerce_app/view/screen/itemCat.dart';
import 'package:ecommerce_app/view/screen/itemDetails.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';

import 'package:get/get.dart';

// Map<String, Widget Function(BuildContext)> routes = {
// //Auth
//   AppRoute.homepage: (context) => const HomePage(),
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signup: (context) => const SignUp(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.verfycodepassword: (context) => const VerfyCodePassword(),
//   AppRoute.verifycodesignup: (context) => const VerifyCodeSignUp(),
//   AppRoute.succesresetpassword: (context) => const SuccessResetPassword(),
//   AppRoute.successsignup: (context) => const SuccessSignUp(),
// //Onboarding
//   AppRoute.onboarding: (context) => const Onboarding(),
//   AppRoute.language: (context) =>   Language(),
// };

List<GetPage<dynamic>>? getroutes = [
  // GetPage(
  //     name: "/",
  //     page: () => const ItemsDetails(),
  //     ),
  GetPage(
      name: "/", page: () => const Onboarding(), middlewares: [MyMiddlWare()]),
  // name: "/", page: () => const HomeScreen(),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.language, page: () => Language()),
  GetPage(
      name: AppRoute.succesresetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successsignup, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfycodepassword, page: () => const VerfyCodePassword()),
  GetPage(
      name: AppRoute.verifycodesignup, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  ////////////////////////////////////////HOME////////////////////////////////////
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const ItemCat()),
  GetPage(name: AppRoute.itemsDetails, page: () => const ItemsDetails()),
];
