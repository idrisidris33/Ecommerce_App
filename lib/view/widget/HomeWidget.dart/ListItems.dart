// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/data/model/itemsModel.dart';

import '../../../controller/home_controller.dart';

class ListItem extends GetView<HomeControllerImp> {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeControllerImp controller = Get.put(HomeControllerImp());
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 130,
      width: 100,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.itemsAll.length,
          itemBuilder: ((context, index) => List(
                itemsModel: ItemsModel.fromJson(controller.itemsAll[index]),
              ))
              
              
              ),
    );
  }
}

class List extends StatelessWidget {
  final ItemsModel itemsModel;
  const List({
    Key? key,
    required this.itemsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "${itemsModel.iImage}",
                // height: 100,
                // width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 200,
        ),
      ],
    );
  }
}
