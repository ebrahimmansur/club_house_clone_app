import 'dart:async';

import 'package:flutter/material.dart';

import 'core.dart';

class AppHost {
  AppHost._();
  static FutureOr run({
    required IAppHostBuilder builder,
  }) async {
    await builder.runConfig();
    runApp(builder.build());
  }
}
