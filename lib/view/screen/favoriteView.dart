import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomAppBarHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/favoriteView_controller.dart';
import '../../data/model/favoriteViewModel.dart';
import '../widget/Favorite/CustomGridfavorite.dart';

class FavoriteView extends GetView<FavoriteViewController> {
  FavoriteView({super.key});
  final FavoriteViewModel favoriteViewModel = FavoriteViewModel();
  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteViewController());
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GetBuilder<FavoriteViewController>(
              builder: (controller) =>
                  ListView(physics: const BouncingScrollPhysics(), children: [
                CustomAppBar(
                    onpressedSearch: () {},
                    onpressedFavorite: () {},
                    onpressedNotivication: () {},
                    hintText: 'Search on Favorite'),
                HandlingDataView(
                    statusreqest: controller.statusReqest!,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.itemsfav.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.6, crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return
                              //  Text("${controller.itemsfav[index].iName}");
                              CustomGridFavorite(
                            favoriteViewModel: controller.itemsfav[index],
                          );
                        })),
              ]),
            )));
  }
}
