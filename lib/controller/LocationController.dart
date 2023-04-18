import 'dart:async';

import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/remote/location.dart';
import 'package:ecommerce_app/data/model/locationModel.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../core/class_package/statusreqest.dart';

class LocationController extends GetxController {
  StatusReqest statusReqest = StatusReqest.loading;

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  double? lat;
  double? lang;
  CameraPosition? kGooglePlex;

  Position? locationcurrent;
  List<Marker> markers = [];
  addMarkers(LatLng latlang) {
    markers.clear();
    markers.add(Marker(markerId: const MarkerId("1"), position: latlang));
    lat = latlang.latitude;
    lang = latlang.longitude;
    update();
  }

  goToLocationDetails() {
    Get.toNamed(AppRoute.detailLocation,
        arguments: {"lat": lat.toString(), "lang": lang.toString()});
  }

  // goAddLocation() {
  //   Get.toNamed(AppRoute.addLocation);
  // }

  ///////////////////////////////////GET CURRENT POSITION//////////////////////////////
  getPosition() async {
    locationcurrent =
        await Geolocator.getCurrentPosition().then((value) => value);
    kGooglePlex = CameraPosition(
      target: LatLng(locationcurrent!.latitude, locationcurrent!.longitude),
      zoom: 18,
    );
    statusReqest = StatusReqest.none;
    update();
  }

  ///////////////////////////////////PERMISSION//////////////////////////////
  Future getlanglatt() async {
    bool curent;
    curent = await Geolocator.isLocationServiceEnabled();
    if (!curent) {
      LocationPermission cheking = await Geolocator.checkPermission();
      if (cheking == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }
      if (cheking == LocationPermission.deniedForever) {
        await Geolocator.requestPermission();
        // await Geolocator.requestTemporaryFullAccuracy();
      }
    }
    // await Geolocator.requestPermission();
    // print(curent);
    // print(cheking);
  }

  ///////////////////////////////////View Data//////////////////////////////

  @override
  void onInit() {
    getPosition();
    getlanglatt();
    super.onInit();
  }
}
