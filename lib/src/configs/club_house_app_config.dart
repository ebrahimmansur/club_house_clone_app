import 'dart:async';

import 'package:club_house_clone_app/src/core/i_app_host_builder.dart';
import 'package:club_house_clone_app/src/features/home/screens/home_screen.dart';

import 'package:flutter/material.dart';

class ClubHouseAppConfig implements IAppHostBuilder {
  @override
  Widget build() {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

  @override
  FutureOr runConfig() {
    debugPrint("No Config found");
  }
}
