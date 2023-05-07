import 'package:get/get.dart';

class CheckOutController extends GetxController {
  late String price;
  late String coupon;
  @override
  void onInit() {
    price = Get.arguments["totalprice"].toString();
    coupon = Get.arguments["namecoupon"];
    super.onInit();
  }
}
