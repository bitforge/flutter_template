import 'package:flutter/material.dart';
import 'package:flutter_template/pages/counter.dart';
import 'package:flutter_template/theme/status_bar_theme.dart';

import 'theme/color_schemes.dart';

void main() {
  runApp(const MyApp());
  StatusBarTheme.setTransparent();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const CounterPage(),
    );
  }
}
