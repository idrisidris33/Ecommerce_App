import 'package:ecommerce_app/controller/LocationController.dart';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/locationViewController.dart';

class ViewLocation extends StatelessWidget {
  const ViewLocation({super.key});

  @override
  Widget build(BuildContext context) {
    LocationViewController locationViewController =
        Get.put(LocationViewController());
    // LocationController locationController = Get.put(LocationController());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              locationViewController.goAddLocation();
            },
            child: const Icon(Icons.map_outlined)),
        appBar: AppBar(
          title: const Text("VIEW LOCATION"),
        ),
        body: GetBuilder<LocationViewController>(builder: (controller) {
          return HandlingDataView(
              statusreqest: locationViewController.statusReqest!,
              widget: ListView.builder(
                  itemCount: locationViewController.datalocation.length,
                  itemBuilder: (context, i) {
                    return Card(
                      child: ListTile(
                        title: Text(
                            '${locationViewController.datalocation[i].addressCity}'),
                        trailing: IconButton(
                          onPressed: () {
                            locationViewController.removeLocation(
                                locationViewController.datalocation[i].addressid!);
                          },
                          icon: const Icon(Icons.delete_forever_outlined),
                        ),
                        leading: Text(
                            '${locationViewController.datalocation[i].addressid}'),
                      ),
                    );
                  }));
        }));
  }
}
