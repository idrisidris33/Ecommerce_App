// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class ItemDescount extends GetView<HomeControllerImp> {
  const ItemDescount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.itemsDescount.length,
          itemBuilder: ((context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  child: Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.all(2),
                      child: Items(
                          itemsModel:
                              ItemsModel.fromJson(controller.itemsDescount[index]))),
                ),
              ))),
    );
  }
}

class Items extends StatelessWidget {
  final ItemsModel itemsModel;
  const Items({
    Key? key,
    required this.itemsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(fit: BoxFit.fill, "${itemsModel.iImage}"),
        ),
        Positioned(
            top: -0,
            right: -0,
            child: Container(
              height: 35,
              width: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColor.purple),
                  "${itemsModel.iDiscount}",
                ),
              ),
            )),
        Positioned(
            bottom: 42,
            left: 6,
            child: Container(
              height: 35,
              width: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                // color: Colors.red,
              ),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.red),
                      "${itemsModel.iPrice}",
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "\$",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.red),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
