import 'package:ecommerce_app/controller/test_controller.dart';
import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:flutter/cupertino.dart';
import '../core/constant/routes.dart';
import '../data/datasource/remote/home.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  gotofavorite();
  gotoItem(
    List categories,
    int selectedCat,
    String idCat,
  );
  gotosettings();
}

class HomeControllerImp extends HomeController {
  HomeData homedata = HomeData(Get.find());

/////////////////////////////GETDATA///////////////////////////
  List data = [];
  List categories = [];
  List itemsDescount = [];
  List itemsAll = [];
/////////////////////////////SEARCH///////////////////////////
  List<ItemsModel> searchList = [];
  TextEditingController? search;
  bool isSearch = false;
  ///////////////////////////////////////////////
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
        categories.addAll(response['categories']['data']);
        itemsDescount.addAll(response['itemsDescount']['data']);
        itemsAll.addAll(response['itemsAll']['data']);
        // categories.addAll(response['categories']);
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  searchfrombotton() {
    isSearch = true;
    searchitems();
    update();
  }

  cheksearch(val) {
    if (val == '') {
      isSearch = false;
    } else {
      isSearch = true;
      searchitems();
    }
    update();
  }

  searchitems() async {
    statusReqest = StatusReqest.loading;
    var response = await homedata.searchData(search!.text);
    statusReqest = handlingData(response);
    if (statusReqest == StatusReqest.success) {
      if (response['status'] == 'success') {
        List responseData = response['data'];
        searchList.addAll(responseData.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusReqest = StatusReqest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    search = TextEditingController();
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
      "idCat": idCat
    });
  }

  @override
  gotofavorite() {
    Get.toNamed(AppRoute.favoritView);
  }

  @override
  gotosettings() {
    Get.toNamed(AppRoute.settings);
  }

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
}
