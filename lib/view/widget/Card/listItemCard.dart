// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class ListItemsCard extends StatelessWidget {
  final void Function()? ontapmin;
  final void Function()? ontapplus;
  final void Function()? ontapremove;
  final String nameofitem;
  final String priceofitem;
  final String sizeofitem;
  final String colorofitem;
  final String imagelink;
  final int lenthoflist;

  const ListItemsCard({
    Key? key,
    required this.ontapmin,
    required this.ontapplus,
    required this.ontapremove,
    required this.nameofitem,
    required this.priceofitem,
    required this.sizeofitem,
    required this.colorofitem,
    required this.imagelink,
    required this.lenthoflist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffd9d9d9).withOpacity(0.7)),
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imagelink,
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    nameofitem,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 20),
                  ),
                  Text(
                    priceofitem,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 10),
                  ),
                  Text(
                    'size : ${sizeofitem}',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 10),
                  ),
                  Text(
                    'color :${colorofitem}',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 10),
                  ),
                  Text(
                    'rating',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 10),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: ontapplus,
                          icon: const Icon(
                            Icons.add_circle,
                            color: AppColor.grey,
                            size: 28,
                          )),
                      Text(
                        '2',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: AppColor.purple, fontSize: 20),
                      ),
                      IconButton(
                          onPressed: ontapmin,
                          icon: const Icon(
                            Icons.remove_circle,
                            color: AppColor.grey,
                            size: 28,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
