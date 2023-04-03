import 'dart:async';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../controller/LocationController.dart';
import '../../../core/constant/color.dart';
import '../../../core/function/validinput.dart';
import '../../widget/auth/formfiledauth.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // controllercard.view();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
            height: 65,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.purple),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Complete',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white),
                ),
                const SizedBox(
                  width: 8,
                ),
                // Text(
                //   '${controllercard.sumprice} €',
                //   style: Theme.of(context)
                //       .textTheme
                //       .displayLarge!
                //       .copyWith(color: AppColor.white),
                // ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('ADD LOCATION'),
      ),
      body: GetBuilder<LocationController>(
          builder: ((locationController) => HandlingDataView(
              statusreqest: locationController.statusReqest,
              widget: Column(
                children: [
                  // ignore: unnecessary_null_comparison
                  if (locationController.kGooglePlex != null)
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: GoogleMap(
                          myLocationButtonEnabled: true,
                          markers: locationController.markers.toSet(),
                          onTap: (latlang) {
                            locationController.addMarkers(latlang);
                          },
                          mapType: MapType.hybrid,
                          initialCameraPosition:
                              locationController.kGooglePlex!,
                          onMapCreated: (GoogleMapController controller) {
                            locationController.controller.complete(controller);
                          },
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      // controller: ,
                      // keyboardType: ,
                      // validator: ,
                      // obscureText: obscureText == false || obscureText == null
                      //     ? false
                      //     : true,
                      // autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 10),
                          suffixIcon: InkWell(
                              onTap: () {}, child: Icon(Icons.location_city)),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // label: Text('textLable',
                          //     style: Theme.of(context)
                          //         .textTheme
                          //         .bodyText1!
                          //         .copyWith(color: AppColor.purple)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      // controller: ,
                      // keyboardType: ,
                      // validator: ,
                      // obscureText: obscureText == false || obscureText == null
                      //     ? false
                      //     : true,
                      // autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 10),
                          suffixIcon: InkWell(
                              onTap: () {}, child: const Icon(Icons.add_road)),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // label: Text('textLable',
                          //     style: Theme.of(context)
                          //         .textTheme
                          //         .bodyText1!
                          //         .copyWith(color: AppColor.purple)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    // padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      // controller: ,
                      // keyboardType: ,
                      // validator: ,
                      // obscureText: obscureText == false || obscureText == null
                      //     ? false
                      //     : true,
                      // autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 10),
                          suffixIcon: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.location_city)),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // label: Text('textLable',
                          //     style: Theme.of(context)
                          //         .textTheme
                          //         .bodyText1!
                          //         .copyWith(color: AppColor.purple)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  // SizedBox(height: 150,)
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
