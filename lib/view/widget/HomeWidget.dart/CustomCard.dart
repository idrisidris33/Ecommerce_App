// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final String subtitleCard;
  final String titleCard;
  const CustomCard({
    Key? key,
    required this.subtitleCard,
    required this.titleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
              color: AppColor.purple, borderRadius: BorderRadius.circular(20)),
          child: ListTile(
              title: Text(
                titleCard,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColor.redText, fontSize: 18),
              ),
              subtitle: Text(
                subtitleCard,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColor.redText, fontSize: 26),
              )),
        ),
        Positioned(
          top: -30,
          right: myServices.sharedPreferences.getString("lang") == "en"
              ? -30
              : null,
          left: myServices.sharedPreferences.getString("lang") == "ar"
              ? -30
              : null,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
                color: AppColor.purpleSecond,
                borderRadius: BorderRadius.circular(160)),
          ),
        )
      ]),
    );
  }
}
