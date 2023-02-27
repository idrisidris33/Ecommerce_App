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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // InkWell(
                      // onTap: (){
                      //    controller.removeFav( favoriteViewModel.favId.toString() );

                      // },
                      //   child: Container(
                      //   height: 25,
                      //   width: 130,

                      //   decoration: BoxDecoration( color: Colors.redAccent,borderRadius: BorderRadius.circular(15)),
                      //     child:  Center(child: Text("Remove",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .displayLarge!
                      //           .copyWith(fontSize: 12,color: AppColor.white),
                      //     )),
                      // )),
                    ],
                  ),
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
                      IconButton(
                          onPressed: () {
                            controller
                                .removeFav(favoriteViewModel.favId.toString());
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            size: 50,
                            color: AppColor.purple,
                          ))
                      // GetBuilder<FavoriteController>(
                      //   builder: (controller) => IconButton(
                      //       onPressed: () {
                      //         if (controller.isFav[favoriteViewModel.iId] == 1) {
                      //           controller.setFavo(favoriteViewModel.iId!, 0);
                      //           controller.removefav(favoriteViewModel.iId);
                      //         } else {
                      //           controller.setFavo(favoriteViewModel.iId!, 1);
                      //           controller.addfav(favoriteViewModel.iId);
                      //         }
                      //       },
                      //       icon: Icon(
                      //           color: AppColor.purple,
                      //           controller.isFav[favoriteViewModel.iId] == 1
                      //               ? Icons.favorite
                      //               : Icons.favorite_border_outlined)),
                      // )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
    ;
  }
}
