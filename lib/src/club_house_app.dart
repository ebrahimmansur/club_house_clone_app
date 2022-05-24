import 'package:flutter/material.dart';

import 'shared/shared.dart';

class ClubHouseApp extends StatelessWidget {
  const ClubHouseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringResource.appTitle,
      debugShowCheckedModeBanner: false,
    );
  }
}
