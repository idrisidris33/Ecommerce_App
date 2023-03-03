import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomItemDescount.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomAppBarHome.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/ListCategories.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomCard.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomText.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/ListItems.dart';
import 'package:ecommerce_app/core/class_package/HandlingData_view.dart';
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:ecommerce_app/core/function/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomeControllerImp());
    return WillPopScope(
      onWillPop: alertExitApp,
      child: GetBuilder<HomeControllerImp>(
          builder: (controller) => HandlingDataView(
                statusreqest: controller.statusReqest,
                widget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    //  physics:const  BouncingScrollPhysics(),
                    children: [
                      CustomAppBar(
                          avatarOnTap: () {
                            controller.gotosettings();
                          },
                          onpressedSearch: () {
                          
                          },
                          onpressedNotivication: () {},
                          onpressedFavorite: () {
                            controller.gotofavorite();
                          },
                          hintText: '1000'.tr),
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
                  ),
                ),
              )),
    );
  }
}
