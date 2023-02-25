import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

import '../core/class_package/statusreqest.dart';
import '../core/function/handlingdatacontroller.dart';
import '../data/datasource/remote/favorite/addfavorite.dart';

class FavoriteController extends GetxController {
FavoriteData favoriteData =FavoriteData(Get.find());
StatusReqest? statusReqest;
  Map isFav = {};
   List items=[];
   MyServices myServices =Get.find() ;
  setFavo(itemsid, val) {
    isFav[itemsid] = val;
    update();
  }

addfav(itemsid)async{
    items.clear();
    statusReqest = StatusReqest.loading;
    var response = await favoriteData.addfav(
         myServices.sharedPreferences.getString("userid")!,itemsid.toString());
    print("=============================== Controller $response ");
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      // Start backend
      if (response['status'] == "success") {
      Get.snackbar("Adding", "This items is alredy add in your favorite");
        // items.addAll(response['data']);
      } else {
        statusReqest = StatusReqest.failure;
      }
      // End
    }
    

}
removefav(itemsid)async{
    items.clear();
    statusReqest = StatusReqest.loading;
    var response = await favoriteData.removefav(
         myServices.sharedPreferences.getString("userid")!,itemsid.toString());
    print("=============================== Controller $response ");
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      // Start backend
      if (response['status'] == "success") {
       Get.snackbar("Removing", "This items is alredy removed in your favorite");
        // items.addAll(response['data']);
      } else {
        statusReqest = StatusReqest.failure;
      }
      // End
    }
    

}

}
