// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class BottonExit extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const BottonExit({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(vertical: 5),
          color: AppColor.purple,
          onPressed: onPressed,
          textColor: Colors.white,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white),
          )),
    );
  }
}
