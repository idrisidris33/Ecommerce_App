import '../../../controller/itemsDetails_Controller.dart';
import '../../../core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopImageItem extends GetView<ItemsDetailsContImp> {
  const TopImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20, color: AppColor.greycold,
            spreadRadius: 1.0,
            //  blurStyle: BlurStyle. ,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Hero(
            tag: "${controller.itemsModel.iId}",
            child: Image.network("${controller.itemsModel.iImage}")),
      ),
    );

    //  Container(
    //   // margin: EdgeInsets.symmetric(horizontal:5),
    //   height: 300,
    //   width: double.infinity,
    //   decoration: const BoxDecoration(
    //     boxShadow: [
    //       BoxShadow(
    //         blurRadius: 20, color: AppColor.greycold,
    //         spreadRadius: 1.0,
    //         //  blurStyle: BlurStyle. ,
    //         offset: Offset(0, 8),
    //       )
    //     ],
    //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
    //     color: AppColor.white,
    //   ),

    // );
  }
}
