// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_app/core/constant/imageassets.dart';

class logoauth extends StatelessWidget {
  final double height;
  const logoauth({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Image.asset(
          AppImageAsset.logo,
          height: height,
        ));
  }
}
