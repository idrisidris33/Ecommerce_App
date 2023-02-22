import 'package:ecommerce_app/controller/itemsDetails_Controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/function/translateData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsContImp controller = Get.put(ItemsDetailsContImp());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
        child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: AppColor.purple,
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        height: 100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        color: AppColor.purple,
                        onPressed: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Add To Cart",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 24,
                                            color: AppColor.white),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    size: 50,
                                    color: AppColor.purpleSecond,
                                  ),
                                )
                              ],
                            ))),
                  ],
                ),
                Container(
                  height: 95,
                  width: 115,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(
                        width: 5, color: AppColor.purple.withOpacity(0.6)),
                    borderRadius: BorderRadius.circular(40),
                    // color: AppColor.greycold
                  ),
                  child: Center(
                      child: Text(
                    "299 \$",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 25, color: AppColor.purple),
                  )),
                )
              ],
            )),
      ),
      // bottomNavigationBar:,
      body: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal:5),
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20, color: AppColor.greycold,
                    spreadRadius: 1.0,
                    //  blurStyle: BlurStyle. ,
                    offset: Offset(0, 8),
                  )
                ],
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
                color: AppColor.white,
              ),

              child: Hero(
                  tag: "${controller.itemsModel.iId}",
                  child: Image.network("${controller.itemsModel.iImage}")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: SizedBox(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                      5,
                      (index) => const Icon(Icons.star, color: Colors.amber),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translateData('${controller.itemsModel.iNameAr}',
                        '${controller.itemsModel.iName}'),
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 25, color: AppColor.purple),
                    textAlign: TextAlign.start,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 24),
                      ),
                      Text(
                        "Color",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 24),
                      ),
                    ],
                  ),

                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Container(
                          height: 40,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.purple.withOpacity(0.3)),
                          child: Icon(Icons.add),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "2",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: AppColor.purple, fontSize: 23),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 40,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.purple.withOpacity(0.3)),
                          child: Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(
                        width: 65,
                      ),
                      ...List.generate(
                        4,
                        (index) => Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, right: 2, left: 2),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: AppColor.blackMatte),
                        ),
                      )
                    ],
                  ),
                  // Text(
                  //   translateData('${controller.itemsModel.cNameAr}',
                  //       '${controller.itemsModel.cName}'),
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyLarge!
                  //       .copyWith(fontSize: 16, color: AppColor.redText),
                  //   textAlign: TextAlign.start,
                  // ),
                  Text(
                    translateData('${controller.itemsModel.iDiscripitonAr}',
                        '${controller.itemsModel.iDiscripiton}'),
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            )
          ]),
    );
  }
}






// Container(
// height: 400,
// child: PageView.builder(
// itemCount: 5,
// itemBuilder: (context,i){
//   return Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20)),
//                       height: 120,
//                       width: 200,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20)),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Icon(Icons.add_call)
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           color: Colors.black.withOpacity(0.4),
//                           borderRadius: BorderRadius.circular(20)),
//                       height: 120,
//                       width: 200,
//                     ),
//                   ],
//                 );
           
// }),)