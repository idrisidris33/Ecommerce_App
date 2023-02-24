// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/function/translateData.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';
import '../../../controller/itemCat_controller.dart';

class CustomItemGrid extends GetView<ItemCatControllerImp> {
  final ItemsModel itemsModel;
  final bool isfav;
  const CustomItemGrid({
    Key? key,
    required this.itemsModel,
    required this.isfav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemCatControllerImp);
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                controller.gotoItemDetail(itemsModel);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: "${itemsModel.iId}",
                          child: Image.network('${itemsModel.iImage}'))),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "${translateData(itemsModel.iNameAr, itemsModel.iName)}",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14),
                  ),
                  Text(
                    "${translateData(itemsModel.iDiscripitonAr, itemsModel.iDiscripiton)}  ",
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 10,
                          color: AppColor.greytitle,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${itemsModel.iPrice}\$',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, color: AppColor.purpleSecond),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                              color: AppColor.purple,
                              isfav == true
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
