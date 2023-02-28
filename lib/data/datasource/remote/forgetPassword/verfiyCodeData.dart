import '../../../../core/class_package/crud.dart';
import '../../../../core/constant/linkshttp.dart';

class VerfiycodepasswordData {
  Crud crud;
  VerfiycodepasswordData(this.crud);
  postdata(String email, String verifycodepass) async {
    var response = await crud.postData(AppLink.verifycodepassword, {
      "email": email,
      "verifycode": verifycodepass,
    });
    return response.fold((l) => l, (r) => r);
  }
}
