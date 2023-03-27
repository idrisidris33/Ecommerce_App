import 'dart:async';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../controller/LocationController.dart';

class ADDLocation extends StatefulWidget {
  const ADDLocation({super.key});

  @override
  State<ADDLocation> createState() => _ADDLocationState();
}

class _ADDLocationState extends State<ADDLocation> {
  // List<Placemark>? placemarks;
  // getdattalocal() async {
  //   placemarks = await placemarkFromCoordinates(
  //       locationcurrent!.latitude, locationcurrent!.longitude);
  // }

  // @override
  // void initState() {
  //   getlanglatt();

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    LocationController locationController = Get.put(LocationController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD LOCATION'),
      ),
      body: GetBuilder<LocationController>(
          builder: ((locationController) => HandlingDataView(
              statusreqest: locationController.statusReqest,
              widget: Column(
                children: [
                // ignore: unnecessary_null_comparison
                if(locationController.kGooglePlex != null)  
                  SizedBox(
                    height: 500,
                    width: 360,
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: locationController.kGooglePlex!,
                      onMapCreated: (GoogleMapController controller) {
                        locationController.controller.complete(controller);
                      },
                    ),
                  ),
                ],
              )

              // Text(" ${locationcurrent!.latitude}"),
              // Text(" ${locationcurrent!.longitude}"),
              // Text(" ${locationcurrent!.timestamp}"),
              // Text(" ${locationcurrent!.speedAccuracy}"),
              // Text(" ${locationcurrent!.speed}"),
              // Text(" ${locationcurrent!.floor}"),
              // Text(" ${placemarks![0].country}"),
              ))),
    );
  }
}
