import 'package:flutter/material.dart';
import 'package:flutter_test_app/boostrap.dart';
import 'package:flutter_test_app/di/di.dart';
import 'package:flutter_test_app/app/router/app_router.dart';
import 'package:flutter_test_app/theme/app_theme.dart';



void main() async {
  await boosttrap(() => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = inject<AppRouter>();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      theme: AppTheme.dataTheme(context),
    );
  }
}


