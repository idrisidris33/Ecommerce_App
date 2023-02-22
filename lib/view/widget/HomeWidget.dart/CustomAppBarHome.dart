// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce_app/core/constant/color.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onpressedIcon;
  final void Function()? onpressedSearch;
  final String hintText;
  const CustomAppBar({
    Key? key,
    required this.onpressedSearch,
    required this.onpressedIcon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Expanded(
          flex: 7,
          child: TextFormField(
            maxLines: 1,
            enabled: true,
            autofocus: false,

            style: Theme.of(context).textTheme.bodyLarge,
            // cursorHeight: 50,
            decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.grey[200] ,
                hintText: hintText,
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: onpressedSearch,
                  color: AppColor.purple,
                ),
                hoverColor: AppColor.purple,
                iconColor: AppColor.purple,
                border: OutlineInputBorder(

                    // borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: AppColor.purple),
            child: IconButton(
                onPressed: onpressedIcon,
                icon: const Icon(
                    color: Colors.white, Icons.notifications_active_outlined)),
          ),
        )
      ]),
    );
  }
}
