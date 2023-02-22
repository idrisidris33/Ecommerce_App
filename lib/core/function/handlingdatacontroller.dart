import 'package:ecommerce_app/core/class_package/statusreqest.dart';

handlingData(response) {
  if (response is StatusReqest) {
    return response;
  } else {
    return StatusReqest.success;
  }
}
