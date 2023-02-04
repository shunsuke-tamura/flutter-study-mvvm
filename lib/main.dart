import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';

void main() {
  if (!kReleaseMode) {
    Fimber.plantTree(DebugTree());
  } else {
    debugPrint = (message, {wrapWidth}) {};
  }
  runZonedGuarded(() => runApp(const ProviderScope(child: MyApp())),
      (error, stack) {
    Fimber.e(error.toString());
  });
}
