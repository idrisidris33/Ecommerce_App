// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class formfiledauth extends StatelessWidget {
  final String? Function(String?) validator;
  final void Function()? ontapIcon;
  final TextInputType keyboardtype;
  final IconData iconData;
  final String textLable;
  final String hintText;
  final TextEditingController? mycontroller;
  final bool? obscureText;
  const formfiledauth({
    Key? key,
    this.obscureText,
    this.ontapIcon,
    required this.validator,
    required this.keyboardtype,
    required this.iconData,
    required this.textLable,
    required this.hintText,
    required this.mycontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: mycontroller,
        keyboardType: keyboardtype,
        validator: validator,
        obscureText: obscureText == false ||obscureText==null ? false : true,
        // autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10),
            suffixIcon: InkWell(onTap: ontapIcon, child: Icon(iconData)),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Text(textLable,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: AppColor.purple)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
