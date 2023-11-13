import 'package:flutter/material.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cats')),
      body: const Center(
        child: Text('Your felines friends here'),
      ),
    );
  }
}
