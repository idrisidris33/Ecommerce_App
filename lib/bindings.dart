import 'package:ecommerce_app/core/class_package/crud.dart';
import 'controller/Auth/signUpController.dart';
import 'controller/home_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignupControllerImp(), fenix: true);
    Get.lazyPut(() => HomeControllerImp(), fenix: true);
  }
}
