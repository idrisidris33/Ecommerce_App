import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsCont extends GetxController {
 
}

class ItemsDetailsContImp extends ItemsDetailsCont {
   late ItemsModel itemsModel;
  @override
  initialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
