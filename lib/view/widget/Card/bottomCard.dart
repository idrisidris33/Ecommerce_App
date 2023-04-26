// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/cartController.dart';
import '../../../core/constant/color.dart';

class BottomCard extends StatelessWidget {
  final String subtotal;
  final TextEditingController couponController;

  final String priceSubtotal;
  final String nameDescount;
  final String descount;
  final String priceDescount;
  final String delivery;
  final String priceDelivery;
  final String total;
  final String priceTotal;
  const BottomCard({
    Key? key,
    required this.subtotal,
    required this.nameDescount,
    required this.couponController,
    required this.priceSubtotal,
    required this.descount,
    required this.priceDescount,
    required this.delivery,
    required this.priceDelivery,
    required this.total,
    required this.priceTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController controllercard = Get.put(CartController());
    return Container(
      // height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: AppColor.whitemate.withOpacity(0.7)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: couponController,
                    )),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: () {
                          controllercard.checkCoupon();
                        },
                        child: const Text('hello'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtotal,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white6, fontSize: 14),
                ),
                Text(
                  priceSubtotal,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white3, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  descount,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white6, fontSize: 14),
                ),
                  Text(
                   nameDescount,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white3, fontSize: 14),
                ),
                Text(
                  priceDescount,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white3, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  delivery,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white6, fontSize: 14),
                ),
                Text(
                  priceDelivery,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white3, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              thickness: 1.2,
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  total,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white6, fontSize: 14),
                ),
                Text(
                  priceTotal,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white3, fontSize: 14),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // controllercard.view();
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
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
          ],
        ),
      ),
    );
  }
}
