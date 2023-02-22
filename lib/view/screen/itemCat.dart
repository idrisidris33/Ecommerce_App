import 'package:ecommerce_app/controller/itemCat_controller.dart';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomAppBarHome.dart';
import 'package:ecommerce_app/view/widget/item/CustomItemGrid.dart';
import 'package:ecommerce_app/view/widget/item/listItemCat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCat extends GetView<ItemCatControllerImp> {
  const ItemCat({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemCatControllerImp());
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<ItemCatControllerImp>(
            builder: (controller) => ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                CustomAppBar(
                    onpressedSearch: () {},
                    onpressedIcon: () {},
                    hintText: '1000'.tr),
                const ItemCatLIst(),
                HandlingDataView(
                    statusreqest: controller.statusReqest!,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.items.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.49),
                        itemBuilder: (BuildContext context, index) =>
                            CustomItemGrid(
                                itemsModel: ItemsModel.fromJson(
                                    controller.items[index]))))
              ],
            ),
          )),
    );
  }
}
