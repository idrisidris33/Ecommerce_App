import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (val.isEmpty) {
      return "can't be Empty";
    }
    if (!GetUtils.isUsername(val)) {
      return "Not valid username";
    }
  }
  if (type == "email") {
    if (val.isEmpty) {
      return "can't be Empty";
    }
    if (!GetUtils.isEmail(val)) {
      return "Not valid E-mail";
    }
  }
  if (type == "number") {
    if (val.isEmpty) {
      return "can't be Empty";
    }
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not valid Number";
    }
  }
  if (type == "password") {
    if (val.isEmpty) {
      return "can't be Empty";
    }
    if (!GetUtils.isUsername(val)) {
      return "Not valid password";
    }
  }
  if (val.isEmpty) {
    return "can't be Empty";
  }
  if (val.length > max) {
    return "can't be larger than $max";
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
}
