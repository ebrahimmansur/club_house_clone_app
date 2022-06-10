import 'package:flutter/material.dart';

abstract class AppTextStyleResource {
  AppTextStyleResource._();

  static TextStyle get headlineStyle1 => const TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get bodyLine1 => const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get headLineStyle2 => const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get darkHeadLine1 => const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get darkHeadLine2 => const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );
}
