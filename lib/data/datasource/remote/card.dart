import 'package:ecommerce_app/core/class_package/crud.dart';

import '../../../core/constant/linkshttp.dart';

class CartData {
  Crud crud;
  CartData(this.crud);

  addToCard(String usersid, String itemsid) async {
    var response = await crud
        .postData(AppLink.addcard, {'usersid': usersid, 'itemsid': itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFromCard(String usersid, String itemsid) async {
    var response = await crud
        .postData(AppLink.removecard, {'usersid': usersid, 'itemsid': itemsid});
    return response.fold((l) => l, (r) => r);
  }

  deleteCard() async {
    var response = await crud.postData(AppLink.deletecard, {});
    return response.fold((l) => l, (r) => r);
  }

  countitemincard(String itemsid, String usersid) async {
    var response = await crud.postData(AppLink.countitemincard, {
      'itemsid': itemsid,
      'usersid': usersid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
