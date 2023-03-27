import 'package:ecommerce_app/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewLocation extends StatelessWidget {
  const ViewLocation({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            settingsController.goAddLocation();
          },
          child: const Icon(Icons.map_outlined)),
      appBar: AppBar(
        title: const Text("VIEW LOCATION"),
      ),
      body: const SizedBox(),
    );
  }
}
