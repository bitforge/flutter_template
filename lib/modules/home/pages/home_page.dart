import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counters')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Classic Counter'),
              onPressed: () => context.push('/home/classic'),
            ),
            OutlinedButton(
              child: const Text('Riverpod Counter'),
              onPressed: () => context.push('/home/riverpod'),
            ),
          ],
        ),
      ),
    );
  }
}
