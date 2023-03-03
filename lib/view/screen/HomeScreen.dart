import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/HomeWidget.dart/CustomBottonAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homeScreen_controller.dart';
import '../../controller/home_controller.dart';
import '../widget/HomeWidget.dart/CustomAppBarHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
  HomeControllerImp homecontroller=  Get.put(HomeControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
    //     appBar: AppBar(
    //     leading: IconButton(onPressed: (){}, icon:   const Icon(Icons.person) ),
    //     // leadingWidth: 0,
    //      title: TextFormField(
    //         maxLines: 1,
    //         enabled: true,
    //         autofocus: false,

    //         style: Theme.of(context).textTheme.bodyLarge,
    //         cursorHeight: 30,
            
    //         decoration: InputDecoration(
    //             // filled: true,
    //             // fillColor: Colors.grey[200] ,
    //             hintText: 'Search',
    //             prefixIcon: IconButton(
    //               icon: const Icon(Icons.search),
    //               onPressed: (){},
    //               color: AppColor.purple,
    //             ),
    //             hoverColor: AppColor.purple,
    //             iconColor: AppColor.purple,
    //             border: InputBorder.none

    //             // border: OutlineInputBorder(

    //             //     // borderSide: BorderSide.none,
    //             //     borderRadius: BorderRadius.circular(20))
    //                 ),
    //       ),
    //     actions: [
    // IconButton(
    //               onPressed: (){},
    //               icon: const Icon(
    //                   color: Colors.white,
    //                   Icons.notifications_active_outlined)),
    //       // CustomAppBar(
    //       //     onpressedSearch: () {},
    //       //     onpressedNotivication: () {},
    //       //     onpressedFavorite: () {
    //       //       homecontroller.gotofavorite();
    //       //     },
    //       //     hintText: '1000'.tr),
    //     ]),
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
    );
    ;
  }
}
