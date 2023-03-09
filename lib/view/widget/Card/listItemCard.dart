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
  const ListItemsCard({
    Key? key,
    required this.ontapmin,
    required this.ontapplus,
    required this.ontapremove,
    required this.nameofitem,
    required this.priceofitem,
    required this.sizeofitem,
    required this.colorofitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          separatorBuilder: ((context, index) => const SizedBox(height: 10)),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, i) => Stack(
                children: [
                  Container(
                    height: 150,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffd9d9d9).withOpacity(0.7)),
                  ),
                  Positioned(
                      left: 0,
                      child: Image.asset(
                        "assets/images/1.png",
                        height: 120,
                        width: 120,
                      )),
                  Positioned(
                      bottom: 12,
                      right: 8,
                      child: Row(
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
                      )),
                  Positioned(
                    top: 5,
                    left: 135,
                    bottom: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameofitem,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  color: AppColor.blackMatte, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          priceofitem,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  color: AppColor.blackMatte, fontSize: 10),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 15),
                          child: Text(
                            'size : ${sizeofitem}',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: AppColor.blackMatte, fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'color :${colorofitem}',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: AppColor.blackMatte, fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 0),
                          child: Text(
                            'rating',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: AppColor.blackMatte, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 3,
                      left: 3,
                      child: InkWell(
                          onTap: ontapremove,
                          child: const Icon(
                            Icons.cancel,
                            color: AppColor.purple,
                            size: 28,
                          )))
                ],
              )),
    );
  }
}
