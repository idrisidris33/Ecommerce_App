// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/function/translateData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/model/categoriesModel.dart';

class ListCategories extends GetView<HomeControllerImp> {
  const ListCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 105,
      // width: 100,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
                height: 12,
              ),
          itemBuilder: (context, index) {
            return Categories(
              i: index,
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]),
            );
            //  SvgPicture.network("file:///C:/Users/ViewTec/StudioProjects/ecommerce_app/assets/svg/categories/cloth.svg")
          }),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final int? i;
  final CategoriesModel categoriesModel;
  const Categories({
    Key? key,
    this.i,
    required this.categoriesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoItem(
            controller.categories, i!, categoriesModel.cId.toString());
      },
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.purple),
              child: SvgPicture.asset(
                  color: Colors.white,
                  height: 20,
                  width: 20,
                  fit: BoxFit.fill,
                  // theme:   const SvgTheme(fontSize: 2,xHeight: 6),
                  "${controller.svgimage[1]}"),
            ),
            Text(
                "${translateData("${categoriesModel.cNameAr}", "${categoriesModel.cName}")}",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 12,
                      color: AppColor.purple,
                    )),
          ]),
    );
  }
}
