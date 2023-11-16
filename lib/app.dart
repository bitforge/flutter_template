import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/router.dart';
import 'package:google_fonts/google_fonts.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  // Your app name
  static const title = 'Awesome New App Name';

  // Basic initial color & text theme
  //
  // Start with a Material 3 theme builder:
  // - Offical: https://m3.material.io/theme-builder
  // - Apppainter (Has color palettes): https://appainter.dev
  //
  // Also check the official Figam Material 3 Desgin Kit:
  // https://www.figma.com/community/file/1035203688168086460
  //
  // Toggle this flag to switch to Material 3
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
