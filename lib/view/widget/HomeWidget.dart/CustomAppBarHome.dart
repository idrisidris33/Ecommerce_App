// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce_app/core/constant/color.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onpressedNotivication;
  final void Function()? onpressedFavorite;
  final void Function()? onpressedSearch;
  final void Function()? avatarOnTap;
  final String hintText;
  const CustomAppBar({
    Key? key,
    required this.onpressedSearch,
    required this.onpressedFavorite,
    required this.onpressedNotivication,
    required this.avatarOnTap,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          width: 35,
          child: InkWell(
              onTap: avatarOnTap,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://png.pngtree.com/png-clipart/20221207/ourmid/pngtree-old-man-cartoon-png-image_6514608.png",
                ),
              )),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 260,
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
        // const SizedBox(
        //   width: 4,
        // ),
        SizedBox(
          width: 35,
      
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: IconButton(
                onPressed: onpressedFavorite,
                icon: const Icon(
                  color: AppColor.purple,
                  Icons.favorite,
                  size: 42,
                )),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ]),
    );
  }
}
