import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/routes.dart';
import 'package:flutter_template/theme/color_schemes.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    //useTransparentStatusBar();
    return MaterialApp.router(
      title: 'Awesome New App Name',
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
    );
  }

  void useTransparentStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
  }
}
