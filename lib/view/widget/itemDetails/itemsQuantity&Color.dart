// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class QuantityColorItem extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String quantity;
  const QuantityColorItem({
    Key? key,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: onAdd,
            child: Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.purple.withOpacity(0.3)),
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              quantity,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColor.purple, fontSize: 23),
            ),
          ),
          InkWell(
            onTap: onRemove,
            child: Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.purple.withOpacity(0.3)),
              child: const Icon(Icons.remove),
            ),
          ),
          const SizedBox(
            width: 65,
          ),
          ...List.generate(
            4,
            (index) => Container(
              margin: const EdgeInsets.only(bottom: 10, right: 2, left: 2),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: AppColor.blackMatte),
            ),
          )
        ],
      ),
    );
  }
}
