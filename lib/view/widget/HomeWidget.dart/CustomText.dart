// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CutomeText extends StatelessWidget {
final String text;
  const CutomeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black.withAlpha(80), fontSize: 15)));
  }
}
