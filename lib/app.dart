import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/router.dart';
import 'package:flutter_template/themes/color_schemes.dart';
import 'package:flutter_template/themes/text_theme.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    useTransparentStatusBar();
    return MaterialApp.router(
      // Your app name
      title: 'Awesome New App Name',
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: customTextTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: customTextTheme,
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
