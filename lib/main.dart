import 'package:device_preview/device_preview.dart';
import 'package:ecommerse/core/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const EcommersApp(),
    ),
  );
}

class EcommersApp extends StatelessWidget {
  const EcommersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Quicksand'),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
