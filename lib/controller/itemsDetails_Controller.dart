import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

import 'cartController.dart';

abstract class ItemsDetailsCont extends GetxController {
  onAdd();
  onRemove();
}

class ItemsDetailsContImp extends ItemsDetailsCont {
  CartController cartcontroller = Get.put(CartController());
  late ItemsModel itemsModel;
  late StatusReqest statusReqest;
  int countitems = 0;

  initialData() async {
    statusReqest = StatusReqest.loading;
    itemsModel = Get.arguments['itemsmodel'];
    countitems = await cartcontroller.getcountitems(itemsModel.iId.toString());
    statusReqest = StatusReqest.success;
    update();
  }

  @override
  onAdd() {
    countitems++;
    cartcontroller.add(itemsModel.iId.toString());
    update();
  }

  @override
  onRemove() {
    if (countitems > 0) {
      countitems--;
      cartcontroller.remove(itemsModel.iId.toString());
      update();
    }
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
