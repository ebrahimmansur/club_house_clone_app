import 'dart:async';

import 'package:flutter/cupertino.dart';

abstract class IAppHostBuilder {
  FutureOr runConfig();
  Widget build();
}
