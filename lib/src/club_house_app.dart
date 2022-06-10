import 'package:flutter/material.dart';

import 'features/home/screens/home_screen.dart';
import 'shared/shared.dart';

class ClubHouseApp extends StatelessWidget {
  const ClubHouseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => StringResource.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeResource.lightTheme,
      darkTheme: ThemeResource.darkThem,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
