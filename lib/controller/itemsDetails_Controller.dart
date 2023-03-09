import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

import 'cartController.dart';

abstract class ItemsDetailsCont extends GetxController {}

class ItemsDetailsContImp extends ItemsDetailsCont {
  CartController cartcontroller = Get.put(CartController());
  late ItemsModel itemsModel;
  late StatusReqest statusReqest;
     int   countitems = 0  ;
  @override
  initialData() async {
    statusReqest = StatusReqest.loading;
    itemsModel = Get.arguments['itemsmodel'];
      countitems = await cartcontroller.getcountitems(itemsModel.iId.toString());
    statusReqest = StatusReqest.success;
    update();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
