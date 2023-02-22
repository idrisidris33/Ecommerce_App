import 'package:ecommerce_app/core/class_package/statusreqest.dart';
import 'package:ecommerce_app/core/function/chekInternet.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'dart:convert';

class Crud {
  Future<Either<StatusReqest, Map>> postData(String url, Map data) async {
    if (await chekinternet()) {
      var response = await http.post(Uri.parse(url), body: data);
      print("==================${response.statusCode}==================");

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print("==================${responsebody}==================");
        return Right(responsebody);
      } else {
        return const Left(StatusReqest.serverfailure);
      }
    } else {
      return const Left(StatusReqest.offlinefailure);
    }
  }
}
