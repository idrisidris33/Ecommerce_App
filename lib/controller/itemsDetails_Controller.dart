import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import '../core/function/handlingdatacontroller.dart';
import '../data/datasource/remote/card.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsCont extends GetxController {
  onAdd();
  onRemove();
}

class ItemsDetailsContImp extends ItemsDetailsCont {
  // CartController cartcontroller = Get.put(CartController());
  CartData cartData = CartData(Get.find());
  MyServices myServices = Get.find();
  late ItemsModel itemsModel;
  late StatusReqest statusReqest;
  int countitems = 0;

  initialData() async {
    statusReqest = StatusReqest.loading;
    itemsModel = Get.arguments['itemsmodel'];
    countitems = await getcountitems(itemsModel.iId.toString());
    statusReqest = StatusReqest.success;
    update();
  }

  @override
  onAdd() {
    additem(itemsModel.iId.toString());
    countitems++;
    update();
  }

  @override
  onRemove() {
    if (countitems > 0) {
      removeitem(itemsModel.iId.toString());
      countitems--;
      update();
    }
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  additem(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.addToCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == "success") {
        // print("///////////////////////////////////////////////////////////");
        // print(response);
        // print("///////////////////////////////////////////////////////////");
        Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest == StatusReqest.failure;
      }
    }
    update();
  }

  removeitem(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.removeFromCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  getcountitems(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.countitemincard(
        itemsid, myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        countitems = response['data'];
        print("///////////////////////////////////////////////////////////");
        print(countitems);
        print("///////////////////////////////////////////////////////////");
        return countitems;
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
    }
  }
}
