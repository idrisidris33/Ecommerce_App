import 'package:get/get.dart';

import '../core/class_package/statusreqest.dart';
import '../core/constant/routes.dart';
import '../core/function/handlingdatacontroller.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/location.dart';
import '../data/model/locationModel.dart';

class LocationViewController extends GetxController {
  MyServices myServices = Get.find();
  LocationData locationData = LocationData(Get.find());
  List<LocationModelData> datalocation = [];
  StatusReqest? statusReqest;

  getDataLocation() async {
    // datalocation.clear();
    statusReqest = StatusReqest.loading;
    update();

    var response = await locationData
        .viewLocation(myServices.sharedPreferences.getString('userid')!);
    statusReqest = handlingData(response);
    if (StatusReqest.success == statusReqest) {
      if (response['status'] == 'success') {
        List data = response['data'];
        datalocation.addAll(data.map((e) => LocationModelData.fromJson(e)));
      } else {
        statusReqest == StatusReqest.failure;
      }
    } else {
      statusReqest == StatusReqest.failure;
    }
    update();
  }

  removeLocation(String id) {
    locationData.deletLocation(id);
    datalocation.removeWhere((element) => element.addressid == id);
    update();
  }

  goAddLocation() {
    Get.toNamed(AppRoute.addLocation);
  }

  @override
  void onInit() {
    getDataLocation();
    super.onInit();
  }
}
