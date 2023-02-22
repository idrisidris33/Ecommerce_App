// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/function/translateData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/controller/itemCat_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/model/categoriesModel.dart';

class ItemCatLIst extends GetView<ItemCatControllerImp> {
  const ItemCatLIst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 35,
      width: 100,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 6,
              ),
          itemBuilder: (context, index) {
            return Categories(
              i: index,
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]),
            );
          }),
    );
  }
}

class Categories extends GetView<ItemCatControllerImp> {
  final CategoriesModel categoriesModel;
  final int i;
  const Categories({
    Key? key,
    required this.categoriesModel,
    required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemCatControllerImp>(
        builder: (controller) => OutlinedButton(
              onPressed: () {
                controller.selecteChange(i, categoriesModel.cId.toString());
              },

              // clipBehavior: Clip.antiAlias,
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(80, 30),
                  // maximumSize:const Size(100, 30),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor:
                      controller.selectedCat == i ? AppColor.purple : null),
              child: Text(
                "${translateData(categoriesModel.cNameAr, categoriesModel.cName)}",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: controller.selectedCat == i
                        ? AppColor.white
                        : AppColor.purple),

                // TextStyle(
                //     color: controller.selectedCat == i
                //         ? Colors.white
                //         : AppColor.purple),
              ),
            ));
  }
}
