import '../../../../core/class_package/crud.dart';
import '../../../../core/constant/linkshttp.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);
  postdata(String password, String email) async {
    var response = await crud.postData(AppLink.resestpassword, {
      "password": password,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
