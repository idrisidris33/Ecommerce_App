import 'package:ecommerce_app/core/constant/linkshttp.dart';

import '../../../core/class_package/crud.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var response = await crud.postData(
      AppLink.test,
      {},
    );
   return response.fold((l) => l, (r) => r);
  }
}
