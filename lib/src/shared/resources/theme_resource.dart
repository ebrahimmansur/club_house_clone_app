import 'package:club_house_clone_app/src/shared/resources/text_style_resource.dart';
import 'package:flutter/material.dart';

import '../shared.dart';

abstract class ThemeResource {
  ThemeResource._();

  static ThemeData get lightTheme => ThemeData(
        primaryColor: ColorResource.whiteColor,
        scaffoldBackgroundColor: ColorResource.primeryBackgroundColor,
        appBarTheme: appBarTheme,
        iconTheme: lightIconThemDate,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.light,
        ),
        textTheme: ThemeResource.lightTextTheme,
        // fontFamily: GoogleFonts.montserrat().fontFamily,
      );

  static AppBarTheme get appBarTheme => AppBarTheme(
        backgroundColor: ColorResource.primeryBackgroundColor,
        iconTheme: lightIconThemDate,
      );

  static IconThemeData get lightIconThemDate =>
      const IconThemeData(color: Colors.black);

  static IconThemeData get darkIconThemData => const IconThemeData(
        color: Colors.white,
      );
  static TextTheme get lightTextTheme => TextTheme(
        headline1: AppTextStyleResource.headlineStyle1,
        headline2: AppTextStyleResource.headLineStyle2,
        bodyText1: AppTextStyleResource.bodyLine1,
      );

  static TextTheme get darkTextTheme => TextTheme(
        headline1: AppTextStyleResource.darkHeadLine1,
        headline2: AppTextStyleResource.darkHeadLine2,
      );

  static MaterialColor get primarySwatch =>
      const MaterialColor(0xffFFFFFF, <int, Color>{
        50: Color(0xffFFFFFF), //10%
        100: Color(0xffFFFFFF), //20%
        200: Color(0xffFFFFFF), //30%
        300: Color(0xffFFFFFF), //40%
        400: Color(0xffFFFFFF), //50%
        500: Color(0xffFFFFFF), //60%
        600: Color(0xffFFFFFF), //70%
        700: Color(0xffFFFFFF), //80%
        800: Color(0xffFFFFFF), //90%
        900: Color(0xffFFFFFF), //100%
      });

  static ThemeData get darkThem => ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: ColorResource.primeryDarkBackgroundColor,
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorResource.whiteColor, brightness: Brightness.dark),
        textTheme: darkTextTheme,
      );
}
