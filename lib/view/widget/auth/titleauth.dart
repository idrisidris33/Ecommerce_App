import 'package:flutter/material.dart';

class customtitleauth extends StatelessWidget {
  final String title;
  const customtitleauth({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
