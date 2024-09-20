import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_app/di/di.dart';
import 'package:logger/web.dart';

Future<void> boosttrap(
  Widget Function() builder,
) async {
  final log = Logger();

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    configureDependencies();

    FlutterError.onError = (details) {
      log.e(details.exceptionAsString(),
          error: details.exception, stackTrace: details.stack);
    };

    PlatformDispatcher.instance.onError = (error, stackTrace) {
      log.e('Plathorm error', error: error, stackTrace: stackTrace);
      return true;
    };

  SystemChrome.setPreferredOrientations([
       DeviceOrientation.portraitUp,
       DeviceOrientation.portraitDown,
     ]).then((_) {
      runApp(builder());
     });

    
  },
      (error, stackTrace) =>
          log.e(error.toString(), error: error, stackTrace: stackTrace));
}
