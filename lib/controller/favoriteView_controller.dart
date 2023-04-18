import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/model/favoriteViewModel.dart';
import 'package:get/get.dart';
import '../core/class_package/statusreqest.dart';
import '../core/function/handlingdatacontroller.dart';
import '../data/datasource/remote/favorite/viewFavoriteData.dart';

class FavoriteViewController extends GetxController {
  ViewFavoriteData viewfavoriteData = ViewFavoriteData(Get.find());
  FavoriteViewModel favoriteViewModel = FavoriteViewModel();
  StatusReqest? statusReqest;
  Map isFav = {};
  List<FavoriteViewModel> itemsfav = [];
  MyServices myServices = Get.find();

  viewFav() async {
    // itemsfav.clear();
    statusReqest = StatusReqest.loading;

    var response = await viewfavoriteData
        .viewfav(myServices.sharedPreferences.getString("userid")!);
    print("=============================== Controller $response ");
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = (response['data']);
        itemsfav.addAll(responsedata.map((e) => FavoriteViewModel.fromJson(e)));
        // Get.snackbar("Adding", "This items is alredy add in your favorite");
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
      // End
    }
  }

  removeFav(String favroiteid) {
    // itemsfav.clear();
    viewfavoriteData.removefav(favroiteid);
    itemsfav.removeWhere((element) => element.favId.toString() == favroiteid);
    update();
    // End
  }

  gotoDetail() {
    Get.toNamed(AppRoute.itemsDetails);
  }

  @override
  void onInit() {
    viewFav();
    super.onInit();
  }
}
