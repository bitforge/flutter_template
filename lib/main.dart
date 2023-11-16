import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/constants/locales.dart';

void main() async {
  // Ensure widget bindings are initialized before running app
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure localization is initialized before running app
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [localeEn, localeDe],
      child: const ProviderScope(
        child: AwesomeApp(),
      ),
    ),
  );
}
