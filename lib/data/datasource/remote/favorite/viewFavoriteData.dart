import 'package:ecommerce_app/core/class_package/crud.dart';
import 'package:ecommerce_app/core/constant/linkshttp.dart';

class ViewFavoriteData {
  Crud crud;
  ViewFavoriteData(this.crud);
  viewfav(
    String userid,
  ) async {
    var response = await crud.postData(AppLink.viewfav, {
      "userid": userid,
    });

    return response.fold((l) => l, (r) => r);
  }
}
