import 'package:ecommerce_app/view/widget/auth/bodyauth.dart';
import '../../view/widget/auth/bottonExit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    content:
        const custombodyauth(body: "Do you really want to exit \n the app"),

    title: "Attention",

    ////////////////////////////////////////////////////////////////////////
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottonExit(
            title: "Stay",
            onPressed: () {
              Get.back();
            },
          ),
          BottonExit(
            title: "Exit",
            onPressed: () {
              exit(0);
            },
          ),
        ],
      )
    ],
  );
  return Future.value(true);
}
