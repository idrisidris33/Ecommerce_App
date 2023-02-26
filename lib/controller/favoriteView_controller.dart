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
        // items.addAll(response['data']);
      } else {
        statusReqest = StatusReqest.failure;
      }
      update();
      // End
    }
  }

  @override
  void onInit() {
    viewFav();
    super.onInit();
  }
}
