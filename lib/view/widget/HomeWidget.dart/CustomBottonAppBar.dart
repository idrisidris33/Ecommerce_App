// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomBottonAppBar extends StatelessWidget {
  final bool? isActive;
  final void Function()? onPressed;
  final IconData icon;
  final String textIcon;
  
   
  const CustomBottonAppBar({
    Key? key,
    required this.isActive,
    required this.onPressed,
    required this.icon,
    required this.textIcon,
     
     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: isActive == true ? 35 : 28,
            icon,
            color: isActive == true ? AppColor.purpleSecond : AppColor.purple,
          ),
          Text(
            textIcon,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color:
                    isActive == true ? AppColor.purpleSecond : AppColor.purple,
                fontSize: isActive == true ? 15 : 12),
          )
        ],
      ),
    );
  }
}
