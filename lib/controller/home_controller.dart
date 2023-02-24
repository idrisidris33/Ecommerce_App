import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import '../core/constant/routes.dart';
import '../data/datasource/remote/home.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  gotoItem(
    List categories,
    int selectedCat,
    String idCat,
  
  );
}

class HomeControllerImp extends HomeController {
  HomeData homedata = HomeData(Get.find());
  List data = [];
  List categories = [];
  List itemsDescount = [];
  List itemsAll = [];
  List svgimage = [
    AppImageAsset.svginfo,
    AppImageAsset.svgclothes,
    AppImageAsset.svgphone,
    AppImageAsset.svgcar,
    AppImageAsset.svgfurniture,
  ];
  List itemsImag = [
    AppImageAsset.jpgcamera,
    AppImageAsset.jpgcasephone,
    AppImageAsset.jpgchoose,
    AppImageAsset.jpgdrone,
    AppImageAsset.jpgheadphone,
    AppImageAsset.jpglaptop,
    AppImageAsset.jpglenscamera,
  ];
  late StatusReqest statusReqest;
  MyServices myServices = Get.find();
  String? username;
  String? useremail;
  String? userphone;
  String? userid;
  @override
  initialData() {
    userid = myServices.sharedPreferences.getString("userid");
    useremail = myServices.sharedPreferences.getString("useremail");
    userphone = myServices.sharedPreferences.getString("userphone");
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  getdata() async {
    statusReqest = StatusReqest.loading;
    var response = await homedata.getData();
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      if (response['status'] == 'success') {
        categories.addAll(response['categories']);
        itemsDescount.addAll(response['itemsDescount']);
        itemsAll.addAll(response['itemsAll']);
        // categories.addAll(response['categories']);
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    initialData();
    getdata();
    super.onInit();
  }

  @override
  gotoItem(
    categories,
    selectedCat,
    idCat,
    
  ) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedCat": selectedCat,
      "idCat":idCat
      
    });
  }
}
