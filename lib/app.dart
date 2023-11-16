import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/router.dart';
import 'package:google_fonts/google_fonts.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  // Your app name
  static const title = 'Awesome New App Name';

  // Basic initial Material 2 color theme
  //
  // Start with a Material theme builder:
  // - Offical Theme Builder (Google): https://m3.material.io/theme-builder
  // - Appainter (Has color palettes): https://appainter.dev
  //
  // Also check the official Figma Material 3 Desgin Kit:
  // https://www.figma.com/community/file/1035203688168086460
  //
  // This template uses Material 2 by default, since it`s simple & colorful to start with.
  // When you're ready, it's recommended to switch to a dynamic or custom Material 3 theme.
  static const useMaterial3 = false;
  static const seedColor = Colors.pink;

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
          secondary: Colors.amberAccent.shade700,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          ThemeData.light().textTheme,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: useMaterial3,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          secondary: Colors.grey.shade100,
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          ThemeData.dark().textTheme,
        ),
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
