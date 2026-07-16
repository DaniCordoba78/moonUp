import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

class MoonUpApp extends StatelessWidget {
  const MoonUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      title: 'moonUp',

      theme: AppTheme.lightTheme,

      routerConfig: AppRouter.router,
    );
  }
}