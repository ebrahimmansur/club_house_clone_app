import 'package:flutter/material.dart';

abstract class BaseFailure {
  final int code;
  final String message;
  BaseFailure({
    required this.code,
    required this.message,
  });

  @override
  int get hashCode => hashValues(code, message);

  @override
  bool operator ==(Object other) {
    return other.hashCode == hashCode;
  }
}
