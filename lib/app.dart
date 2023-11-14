import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/router.dart';
import 'package:google_fonts/google_fonts.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  // Your app name
  static const title = 'Awesome New App Name';

  // Basic initial theme
  // Material 3 theme builders:
  // - https://m3.material.io/theme-builder
  // - https://docs.flexcolorscheme.com
  // - https://appainter.dev
  static const useMaterial3 = false;
  static const seedColor = Colors.pink;
  static final textTheme = GoogleFonts.robotoTextTheme();

  @override
  Widget build(BuildContext context) {
    useTransparentStatusBar();
    return MaterialApp.router(
      title: title,
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: useMaterial3,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
        ),
        textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: useMaterial3,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.dark,
        ),
        textTheme: textTheme,
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
