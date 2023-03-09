import 'dart:ui';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/Card/bottomCard.dart';
import '../widget/Card/listItemCard.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          height: 65,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: AppColor.purple),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Text(
                '125 €',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: AppColor.white),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //////////////////////////////////////////////////////////////////////////////////
      /////////////////////////////////////////////////////////////////////////////////
      ////////////////////////////////////////////////////////////////////////////////

      body: SafeArea(
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
                    ListItemsCard(
                        ontapmin: () {},
                        ontapplus: () {},
                        ontapremove: () {},
                        nameofitem: 'The Name',
                        priceofitem: 'Price ',
                        sizeofitem: '24',
                        colorofitem: 'Gold'),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            const BottomCard(
                subtotal: 'Subtotal',
                priceSubtotal: '127',
                descount: 'Descount',
                priceDescount: '- 2',
                delivery: 'Delivery',
                priceDelivery: 'free',
                total: 'Total',
                priceTotal: '125'),
          ],
        ),
      ),
    );
  }
}
