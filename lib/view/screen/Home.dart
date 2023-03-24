// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/core/function/alertexitapp.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomAppBarHome.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomCard.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomItemDescount.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomText.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/ListCategories.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/ListItems.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomeControllerImp());
    return WillPopScope(
      onWillPop: alertExitApp,
      child: GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            //  physics:const  BouncingScrollPhysics(),
            children: [
              CustomAppBar(
                  searchController: controller.search!,
                  avatarOnTap: () {
                    controller.gotosettings();
                  },
                  onchangesearch: (val) {
                    controller.cheksearch(val);
                  },
                  onpressedSearch: () {
                    controller.searchfrombotton();
                  },
                  onpressedNotivication: () {},
                  onpressedFavorite: () {
                    controller.gotofavorite();
                  },
                  hintText: '1000'.tr),
              HandlingDataView(
                  statusreqest: controller.statusReqest,
                  widget: !controller.isSearch
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomCard(
                              titleCard: 'A summer surprise',
                              subtitleCard: 'Cashnack 25%',
                            ),
                            const ListCategories(),
                            CutomeText(text: "401".tr),
                            const ListItem(),
                            const Divider(height: 20),
                            const ItemDescount(),
                            const SizedBox(
                              height: 200,
                            )
                          ],
                        )
                      : const SearchPage()),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchPage extends GetView<HomeControllerImp> {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.searchList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // controller.goToPageProductDetails(listdatamodel[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Card(
                  child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Expanded(
                    //     child: CachedNetworkImage(
                    //         imageUrl:
                    //             "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
                    Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(controller.searchList[index].iName!),
                          subtitle: Text(controller.searchList[index].cName!),
                        )),
                  ],
                ),
              )),
            ),
          );
        });
  }
}
