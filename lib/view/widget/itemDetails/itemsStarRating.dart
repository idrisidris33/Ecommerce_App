import 'package:flutter/material.dart';

class StarRatingItems extends StatelessWidget {
  const StarRatingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: SizedBox(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ...List.generate(
              5,
              (index) => const Icon(Icons.star, color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
