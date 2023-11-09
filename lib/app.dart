import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/rive/rive_svg.dart';
import 'package:flutter_template/modules/rive/rive_text_example.dart';
import 'package:flutter_template/modules/rive/themeChanger/rive_theme_changer.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:flutter_template/theme/color_schemes.dart';
import 'package:flutter_template/theme/status_bar.dart';

class AwesomeApp extends ConsumerWidget {
  const AwesomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);

    useTransparentStatusBar();
    return MaterialApp(
      title: 'Awesome New App Name',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: const RiveSvg(),
    );
  }
}
