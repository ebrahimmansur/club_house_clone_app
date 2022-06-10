import 'dart:async';

import 'package:club_house_clone_app/src/club_house_app.dart';
import 'package:club_house_clone_app/src/core/app_hosts/i_app_host_builder.dart';
import 'package:club_house_clone_app/src/shared/shared.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClubHouseAppConfig implements IAppHostBuilder {
  @override
  Widget build() {
    return const ClubHouseApp();
  }

  @override
  FutureOr runConfig() async {
    WidgetsFlutterBinding.ensureInitialized();

    if (_isDark) {
      _enableDarkSystemUiOverlayStyle();
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: ColorResource.primeryBackgroundColor,
          statusBarIconBrightness: Brightness.light));
    }
  }

  void _enableDarkSystemUiOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorResource.primeryDarkBackgroundColor,
        statusBarIconBrightness: Brightness.light));
  }

  bool get _isDark => false;
}
