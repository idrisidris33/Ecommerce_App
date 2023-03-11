import 'package:ecommerce_app/controller/itemsDetails_Controller.dart';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/function/translateData.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import '../widget/itemDetails/floatActionButtonItem.dart';
import '../widget/itemDetails/itemsQuantity&Color.dart';
import '../widget/itemDetails/itemImageTop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsContImp controller = Get.put(ItemsDetailsContImp());
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatActionButtonItem(
          itemsModel: controller.itemsModel,
        ),
        // bottomNavigationBar:,
        body: GetBuilder<ItemsDetailsContImp>(
            builder: (controller) => HandlingDataView(
                  statusreqest: controller.statusReqest,
                  widget: ListView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(
                          decelerationRate: ScrollDecelerationRate.normal),
                      children: [
                        const TopImageItem(),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translateData(
                                    '${controller.itemsModel.iNameAr}',
                                    '${controller.itemsModel.iName}'),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 25, color: AppColor.purple),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Quantity",
                                    textAlign: TextAlign.end,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 24),
                                  ),
                                  Text(
                                    "Color",
                                    textAlign: TextAlign.end,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 24),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              QuantityColorItem(
                                quantity: "${controller.countitems}",
                                onAdd: () {
                                  controller.onAdd();
                                },
                                onRemove: () {
                                  controller.onRemove();
                                },
                              ),
                              Text(
                                translateData(
                                    '${controller.itemsModel.iDiscripitonAr}',
                                    '${controller.itemsModel.iDiscripiton}'),
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              // Text(
                              //   '${controller.countitems}',
                              //   style: Theme.of(context).textTheme.bodyLarge,
                              //   textAlign: TextAlign.start,
                              // ),
                              const SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        )
                      ]),
                )));
  }
}
