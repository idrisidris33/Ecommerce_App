import 'package:ecommerce_app/core/constant/linkshttp.dart';

import '../../../core/class_package/crud.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);

  getData(String id, String userid) async {
    var response = await crud.postData(
      AppLink.items,
      {
        'id': id.toString(),
        'userid': userid,
      },
    );
    return response.fold((l) => l, (r) => r);
  }

 
}
