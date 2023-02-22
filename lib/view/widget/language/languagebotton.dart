// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class LanguageBotton extends StatelessWidget {
  final String textbotton;
  final void Function()? onPressed;
  const LanguageBotton({
    Key? key,
    required this.textbotton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: MaterialButton(
          color: AppColor.purple,
          onPressed: onPressed,
          child: Text(
            textbotton,
            style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Cairo",color: Colors.white),
          )),
    );
  }
}
