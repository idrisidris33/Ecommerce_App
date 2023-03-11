import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/card.dart';
import 'package:ecommerce_app/data/model/cardDetailModel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());
  late StatusReqest statusReqest;
  MyServices myServices = Get.find();
  CardDetailModel cardDetailModel = CardDetailModel();
  int? itemsCount;
  List<CardDetailModel> itemscard = [];
  double sumprice = 0.0;
  int? sumitems;

  add(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.addToCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(statusReqest);
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
  }

  remove(String itemsid) async {
    statusReqest = StatusReqest.loading;
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
  }

  getcountitems(String itemsid) async {
    statusReqest = StatusReqest.loading;
    var response = await cartData.countitemincard(
        itemsid, myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        itemsCount = response['data'];
        print("///////////////////////////////////////////////////////////");
        print(itemsCount);
        print("///////////////////////////////////////////////////////////");
        return itemsCount;
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
    }
  }

  view() async {
    statusReqest = StatusReqest.loading;
    var response = await cartData
        .viewCardItem(myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      if (response['status'] == 'success') {
        print("//////////////////////////////////////////////////////");
        print(response);
        print("//////////////////////////////////////////////////////");
        Map sumitemprice = response['datasum'];
        List dataresponse = response['datacard'];
        itemscard.addAll(dataresponse.map((e) => CardDetailModel.fromJson(e)));
        sumitems = sumitemprice['totalitem'];
        sumprice = double.parse(sumitemprice['totalprice']);
      }
      update();
    }
  }

  delete() {}

  @override
  void onInit() {
    view();
    super.onInit();
  }
}
