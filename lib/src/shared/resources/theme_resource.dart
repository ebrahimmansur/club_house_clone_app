import 'package:flutter/material.dart';

import '../shared.dart';

abstract class ThemeResource {
  ThemeResource._();

  static ThemeData get clubHouseTheme => ThemeData(
        appBarTheme: clubeHouseAppBarTheme,
        backgroundColor: ColorResource.primeryBackgroundColor,
        primaryColor: Colors.white,
        accentColor: ColorResource.greenColor,
        iconTheme: iconThemDate,
      );

  static AppBarTheme get clubeHouseAppBarTheme =>
      AppBarTheme(backgroundColor: ColorResource.primeryBackgroundColor);

  static IconThemeData get iconThemDate =>
      const IconThemeData(color: Colors.black);

  //TODO: Need to add a style resource file as a depedency for this theme file.
  static TextTheme get textTheme => const TextTheme();
}
