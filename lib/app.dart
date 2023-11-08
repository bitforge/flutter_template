import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/theme/status_bar.dart';
import 'modules/counter/counter.dart';
import 'theme/color_schemes.dart';

class AwesomeApp extends ConsumerWidget {
  const AwesomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StatusBar.setTransparent();
    return MaterialApp(
      title: 'Awesome New App Name',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const RiverpodCounterPage(),
    );
  }
}
