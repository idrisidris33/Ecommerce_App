// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class FloatActionButtonItem extends StatelessWidget {
  final ItemsModel itemsModel;
  const FloatActionButtonItem({
    Key? key,
    required this.itemsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, right: 10, left: 10),
      child: Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      height: 65,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      color: AppColor.purple,
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Add To Cart",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 20, color: AppColor.white),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  itemsModel.favorite == 1
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  size: 50,
                                  color: AppColor.purpleSecond,
                                ),
                              )
                            ],
                          ))),
                ],
              ),
              Container(
                height: 80,
                width: 98,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(
                      width: 5, color: AppColor.purple.withOpacity(0.6)),
                  borderRadius: BorderRadius.circular(40),
                  // color: AppColor.greycold
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    "${itemsModel.iPrice} \$",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 22, color: AppColor.purple),
                  ),
                )),
              )
            ],
          )),
    );
  }
}
