import 'package:ecommerce_app/core/class_package/crud.dart';

import '../../../core/constant/linkshttp.dart';

class LocationData {
  Crud crud;
  LocationData(this.crud);

  viewLocation(String userid) async {
    var response = await crud.postData(AppLink.viewLocation, {
      "userid": userid,
    });
    return response.fold((l) => l, (r) => r);
  }

// ------------------------------------------------------------
  addLocation(
    String userid,
    String name,
    String city,
    String street,
    String lat,
    String lang,
  ) async {
    var response = await crud.postData(AppLink.addLocation, {
      "name": name,
      "city": city,
      "street": street,
      "lat": lat,
      "lang": lang,
      "userid": userid,
    });
    return response.fold((l) => l, (r) => r);
  }

// ------------------------------------------------------------
  // update and delete with id only
  deletLocation(String addresid) async {
    await crud.postData(AppLink.deleteLocation, {"addressid": addresid});
  }

  updateLocation() {}
}
