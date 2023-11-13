import 'package:flutter/material.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bitforge Homepage')),
      body: const Center(
        child: Text('A WebView page'),
      ),
    );
  }
}
