// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class BottomCard extends StatelessWidget {
  final String subtotal;
  final String priceSubtotal;
  final String descount;
  final String priceDescount;
  final String delivery;
  final String priceDelivery;
  final String total;
  final String priceTotal;
  const BottomCard({
    Key? key,
    required this.subtotal,
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
    return Container(
      height: 280,
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
            )
          ],
        ),
      ),
    );
  }
}
