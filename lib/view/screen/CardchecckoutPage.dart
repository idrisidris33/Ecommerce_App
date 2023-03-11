import 'dart:ui';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cartController.dart';
import '../widget/Card/bottomCard.dart';
import '../widget/Card/listItemCard.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controllercard = Get.put(CartController());
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          controllercard.view();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Container(
            height: 65,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.purple),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CheckOut',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white),
                ),
                const SizedBox(
                  width: 8,
                ),
                // Text(
                //   '${controllercard.sumprice} €',
                //   style: Theme.of(context)
                //       .textTheme
                //       .displayLarge!
                //       .copyWith(color: AppColor.white),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //////////////////////////////////////////////////////////////////////////////////
      /////////////////////////////////////////////////////////////////////////////////
      ////////////////////////////////////////////////////////////////////////////////

      body:
      GetBuilder<CartController>(builder:((controllercard)=> HandlingDataView(statusreqest: controllercard.statusReqest, widget: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: const Icon(Icons.arrow_back_ios)),
                                  Text(
                                    'My Cart',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(color: AppColor.white3),
                                  ),
                                  const SizedBox(
                                    width: 135,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_horiz))
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 400,
                                child: ListView.separated(
                                  separatorBuilder: ((context, index) =>
                                      const SizedBox(height: 10)),
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: controllercard.itemscard.length,
                                  itemBuilder: (context, i) => ListItemsCard(
                                      lenthoflist:
                                          controllercard.itemscard.length,
                                      ontapmin: () {},
                                      ontapplus: () {},
                                      ontapremove: () {},
                                      imagelink:
                                          "${controllercard.itemscard[i].iImage}",
                                      nameofitem:
                                          '${controllercard.itemscard[i].iName}',
                                      priceofitem: 'Price ',
                                      sizeofitem: '24',
                                      colorofitem: 'Gold'),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      BottomCard(
                          subtotal: 'Subtotal',
                          priceSubtotal: '${controllercard.sumprice}',
                          descount: 'Descount',
                          priceDescount: '- 2',
                          delivery: 'Delivery',
                          priceDelivery: 'free',
                          total: 'Total',
                          priceTotal: '125'),
                    ],
                  ),
                ),  )),)



     
    );
  }
}
