import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomBottonAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homeScreen_controller.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) { 
  Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          splashColor: AppColor.purple,
          backgroundColor: AppColor.purple,
          onPressed: () {},
          child: const Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.hardEdge,
            elevation: 25,
            height: 66,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(controller.body.length + 1, (index) {
                  int i = index > 2 ? index - 1 : index;

                  return index == 2
                      ? const Spacer()
                      : CustomBottonAppBar(
                          isActive: controller.currentPage == i ? true : false,
                          onPressed: () {
                            controller.changePage(i);
                          },
                          icon: controller.iconbottom[i],
                          textIcon: controller.textbottom[i]);
                })
              ],
            )),

        body: controller.body.elementAt(controller.currentPage),
      ),
    );;
  }
}