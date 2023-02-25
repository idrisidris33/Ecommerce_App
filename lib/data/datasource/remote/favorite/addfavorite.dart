import 'package:ecommerce_app/core/class_package/crud.dart';
import 'package:ecommerce_app/core/constant/linkshttp.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addfav(String userid, String itemsid) async {
    var response = await crud.postData(AppLink.addfav, {
      "itemsid": itemsid,
      "usersid": userid,
    });

    return response.fold((l) => l, (r) => r);
  }

  removefav(String userid, String itemsid) async {
    var response = await crud.postData(AppLink.removefav, {
      "itemsid": itemsid,
      "usersid": userid,
    });

    return response.fold((l) => l, (r) => r);
  }
}
