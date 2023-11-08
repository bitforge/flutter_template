import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/counter/counter.dart';
import 'package:flutter_template/theme/color_schemes.dart';
import 'package:flutter_template/theme/status_bar.dart';

class AwesomeApp extends ConsumerWidget {
  const AwesomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useTransparentStatusBar();
    return MaterialApp(
      title: 'Awesome New App Name',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const RiverpodCounterPage(),
    );
  }
}
