import '../../../../core/class_package/crud.dart';
import '../../../../core/constant/linkshttp.dart';

class VerfiycodeSignupData {
  Crud crud;
  VerfiycodeSignupData(this.crud);
  postdata(String email, String verfiycode) async {
    var response = await crud.postData(AppLink.verifycode, {
      "email": email,
      "verfiycode": verfiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
