import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class FloatActionButtonItem extends StatelessWidget {
  const FloatActionButtonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                                          fontSize: 24, color: AppColor.white),
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
    );
  }
}
