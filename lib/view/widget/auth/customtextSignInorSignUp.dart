// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomTextSignInorSignUp extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function() onTap;
  const CustomTextSignInorSignUp({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1.tr,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13)
        ),
        const SizedBox(
          width: 4,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2.tr,
            style:Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.purple,fontSize: 14),
          ),
        )
      ],
    );
  }
}
