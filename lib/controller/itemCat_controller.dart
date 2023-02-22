import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/data/datasource/remote/items.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

abstract class ItemCatController extends GetxController {
  initialData();
  selecteChange(int val, String onCatchang);
  getItem(String idCat);
  gotoItemDetail(ItemsModel itemsModel);
  // onchangePage(value, String onCatchang);
}

class ItemCatControllerImp extends ItemCatController {
  ItemsData itemsData = ItemsData(Get.find());
  StatusReqest? statusReqest;
  List categories = [];
  List items = [];
  int? selectedCat;
  String? catId;

  @override
  void onInit() {
    super.onInit();
    initialData();
    getItem(catId!);
  }

  @override
  initialData() {
    categories = Get.arguments["categories"];
    selectedCat = Get.arguments["selectedCat"];
    catId = Get.arguments["idCat"];
  }

  @override
  selecteChange(val, onCatchang) {
    selectedCat = val;
    catId = onCatchang.toString();
    getItem(catId!);
    update();
  }

  @override
  getItem(idCat) async {
    items.clear();
    statusReqest = StatusReqest.loading;
    var response = await itemsData.getData(idCat);
    print("=============================== Controller $response ");
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      // Start backend
      if (response['status'] == "success") {
        items.addAll(response['data']);
      } else {
        statusReqest = StatusReqest.failure;
      }
      // End
    }
    update();
  }

  @override
  gotoItemDetail(itemsModel) {
    Get.toNamed(AppRoute.itemsDetails, arguments: {"itemsmodel": itemsModel});
  }

  // @override
  // onchangePage(value, onCatchang) {
  //   selectedCat = value;
  //   catId = onCatchang.toString();
  //   getItem(catId!);
  //   update();
  // }
}
