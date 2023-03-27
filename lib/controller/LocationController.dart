import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../core/class_package/statusreqest.dart';

class LocationController extends GetxController {
  StatusReqest statusReqest = StatusReqest.loading;

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
    CameraPosition? kGooglePlex;
  Position? locationcurrent;
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
  Future getlanglatt() async {
    bool curent;
    curent = await Geolocator.isLocationServiceEnabled();
    if (!curent) {
      LocationPermission cheking = await Geolocator.checkPermission();
      if (cheking == LocationPermission.denied) {
        await Geolocator.requestPermission();


      }
    }

    // await Geolocator.requestPermission();
    // print(curent);
    // print(cheking);
  }
  @override
  void onInit() {
    getPosition();
    getlanglatt();
    super.onInit();
  }
}
