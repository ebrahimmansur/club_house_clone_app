import 'package:flutter/material.dart';

abstract class ColorResource {
  ColorResource._();
  static Color get primeryBackgroundColor => const Color(0xFFF0F0E4);
  static Color get secondaryBackgroundColor => const Color(0xFFE7E4D3);
  static Color get accentColor => const Color(0xff2AAF61);
  static Color get primeryDarkBackgroundColor => Colors.black;
  static Color get whiteColor => Colors.white;
}
