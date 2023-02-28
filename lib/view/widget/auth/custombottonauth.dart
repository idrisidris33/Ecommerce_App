// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustombottonAuth extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustombottonAuth({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: const EdgeInsets.only(top: 20),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: AppColor.purple,
          onPressed: onPressed,
          textColor: Colors.white,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1! .copyWith(color: Colors.white),
          )),
    );
  }
}
