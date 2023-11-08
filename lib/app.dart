import 'package:flutter/material.dart';
import 'modules/counter/counter.dart';
import 'theme/color_schemes.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome New App Name',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const BasicCounterPage(),
    );
  }
}
