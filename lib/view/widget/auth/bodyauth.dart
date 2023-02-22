// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class custombodyauth extends StatelessWidget {
  final String body;
  const custombodyauth({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Text(
        body,
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(fontSize: 16, color: AppColor.greycold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
