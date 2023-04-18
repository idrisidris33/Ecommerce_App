import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/card.dart';
import 'package:ecommerce_app/data/model/cardDetailModel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // ItemsDetailsCont itemsDetailsCont = Get.put(ItemsDetailsContImp());

  CartData cartData = CartData(Get.find());
  late StatusReqest statusReqest;
  MyServices myServices = Get.find();
  CardDetailModel cardDetailModel = CardDetailModel();

  List<CardDetailModel> itemscard = [];
  double sumprice = 0.0;
  int? sumitems;
  // int countitem = 0;
  int? itemsCount;

  getcountitems(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.countitemincard(
        itemsid, myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        itemsCount = response['data'];
        // print("///////////////////////////////////////////////////////////");
        // print(itemsCount);
        // print("///////////////////////////////////////////////////////////");
        return itemsCount;
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
    }
  }

  add(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.addToCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == "success") {
        // Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest == StatusReqest.failure;
      }
    }
    update();
  }

  remove(String itemsid) async {
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData.removeFromCard(
        myServices.sharedPreferences.getString('userid')!, itemsid);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        // Get.snackbar("Adding", "This items is alredy add in your CARD");
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  view() async {
  // refreshPage();
    statusReqest = StatusReqest.loading;
    update();
    var response = await cartData
        .viewCardItem(myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      if (response['status'] == 'success') {
        // print("//////////////////////////////////////////////////////");
        // print(response);
        // print("//////////////////////////////////////////////////////");
        if (response['datacard']['status'] == 'success') {
          Map sumitemprice = response['datasum'];
          List dataresponse = response['datacard']['data'];
          itemscard.clear();
          itemscard
              .addAll(dataresponse.map((e) => CardDetailModel.fromJson(e)));
          sumitems = sumitemprice['totalitem'];
          sumprice = double.parse(sumitemprice['totalprice']);
        }
      }
    }
    update();
  }

  // resetVarCart() {
  //   sumitems = 0;
  //   sumprice = 0.0;
  //   itemscard.clear();

  // }

  refreshPage() async {
    // resetVarCart();
 await view();
   
  }

  @override
  void onInit() async {
    // itemsCount = await getcountitems(cardDetailModel.iId.toString());
    view();
    super.onInit();
  }

  delete() {}

  // onAdd() {
  //   add(cardDetailModel.iId.toString());
  //   countitem++;
  //   update();
  // }

  // onRemove() {
  //   if (countitem > 0) {
  //     remove(cardDetailModel.iId.toString());
  //     countitem--;
  //     update();
  //   }
  // }
}
