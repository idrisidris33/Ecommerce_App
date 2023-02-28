// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:ecommerce_app/data/model/favoriteViewModel.dart';
import 'package:get/get.dart';

import '../../../controller/favoriteView_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/function/translateData.dart';

class CustomGridFavorite extends GetView<FavoriteViewController> {
  final FavoriteViewModel favoriteViewModel;
  const CustomGridFavorite({
    Key? key,
    required this.favoriteViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: "${favoriteViewModel.iId}",
                          child: Image.network('${favoriteViewModel.iImage}'))),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "${translateData(favoriteViewModel.iNameAr, favoriteViewModel.iName)}",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  // Text(
                  //   "${translateData(favoriteViewModel.iDiscripitonAr, favoriteViewModel.iDiscripiton)}  ",
                  //   maxLines: 2,
                  //   textAlign: TextAlign.start,
                  //   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //         fontSize: 10,
                  //         color: AppColor.greytitle,
                  //       ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${favoriteViewModel.iPrice}\$',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14, color: AppColor.purpleSecond),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            controller
                                .removeFav(favoriteViewModel.favId.toString());
                          },
                          child: Container(
                            height: 25,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text(
                              "Remove",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontSize: 12, color: AppColor.white),
                            )),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
    ;
  }
}
