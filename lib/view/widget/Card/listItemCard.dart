// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

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
  final String itemCount;

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
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        // width: 360,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                // margin: EdgeInsets.all(50),
                // height: 150,
                // width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.whitemate.withOpacity(0.4)),

                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    nameofitem,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            overflow: TextOverflow.ellipsis,
                                            color: AppColor.blackMatte,
                                            fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)),
                                      child: Image.network(
                                        imagelink,
                                        height: 110,
                                        width: 110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          priceofitem,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  color: AppColor.purple,
                                                  fontSize: 14),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'size : $sizeofitem',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  color: AppColor.blackMatte,
                                                  fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'color :$colorofitem',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  color: AppColor.blackMatte,
                                                  fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'rating',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  color: AppColor.blackMatte,
                                                  fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Row(
                        // mainAxisAlignment:MainAxisAlignment. ,
                        // crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          IconButton(
                              onPressed: ontapplus,
                              icon: const Icon(
                                Icons.add_circle,
                                color: AppColor.grey,
                                size: 32,
                              )),
                          Text(
                            itemCount,
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
                                size: 32,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}


////////////////////////////////////////////////////////////

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Column(
                      //       children: [
                              // Text(
                              //   nameofitem,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .displayLarge!
                              //       .copyWith(
                              //           color: AppColor.blackMatte,
                              //           fontSize: 20),
                              // ),
                              // Text(
                              //   priceofitem,
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .displayLarge!
                              //       .copyWith(
                              //           color: AppColor.blackMatte,
                              //           fontSize: 10),
                              // ),
                              // Text(
                              //   'size : ${sizeofitem}',
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .displayLarge!
                              //       .copyWith(
                              //           color: AppColor.blackMatte,
                              //           fontSize: 10),
                              // ),
                              // Text(
                              //   'color :${colorofitem}',
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .displayLarge!
                              //       .copyWith(
                              //           color: AppColor.blackMatte,
                              //           fontSize: 10),
                              // ),
                              // Text(
                              //   'rating',
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .displayLarge!
                              //       .copyWith(
                              //           color: AppColor.blackMatte,
                              //           fontSize: 10),
                              // ),
                              // Row(
                              //   children: [
                              //     IconButton(
                              //         onPressed: ontapplus,
                              //         icon: const Icon(
                              //           Icons.add_circle,
                              //           color: AppColor.grey,
                              //           size: 28,
                              //         )),
                              //     Text(
                              //       '2',
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .displayLarge!
                              //           .copyWith(
                              //               color: AppColor.purple,
                              //               fontSize: 20),
                              //     ),
                              //     IconButton(
                              //         onPressed: ontapmin,
                              //         icon: const Icon(
                              //           Icons.remove_circle,
                              //           color: AppColor.grey,
                              //           size: 28,
                              //         )),
                              //   ],
                              // )
                      //       ],
                      //     )
                      //   ],
                      // ),
         
