import 'package:flutter/material.dart';

import 'color.dart';

ThemeData englishTheme = ThemeData(
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: "Posto",
          color: AppColor.purple,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        
        bodyLarge: TextStyle(
          fontFamily: "Posto",
          color: AppColor.greytitle,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        )));

ThemeData arabicTheme = ThemeData(
    textTheme: const TextTheme(
  displayLarge: TextStyle(
    fontFamily: "Cairo",
    color: AppColor.purple,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    fontFamily: "Cairo",
    color: AppColor.greytitle,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  ),
));
