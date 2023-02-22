import '../../../../core/class_package/crud.dart';
import '../../../../core/constant/linkshttp.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  postdata(String email) async {
    var response = await crud.postData(AppLink.chekemail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
