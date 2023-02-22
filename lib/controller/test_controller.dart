import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late String statusdata;
  late StatusReqest statusreqest;
  
  getdata() async {
    statusreqest = StatusReqest.loading;
    update();
    var response = await testData.getData();
    print('===================== ${response} =======================');
    statusreqest = handlingData(response);
    update();
    if (StatusReqest.success == statusreqest) {
      if (response['status'] == 'success' ) {
        data.addAll(response['data']);
      } else {
        statusreqest = StatusReqest.failure;
      }

      statusdata = response['status'];
    }
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}
