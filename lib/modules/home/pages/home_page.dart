import 'package:easy_localization/easy_localization.dart';
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('home.counter_classic'.tr()),
                onPressed: () => context.push('/home/classic'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('home.counter_riverpod'.tr()),
                onPressed: () => context.push('/home/riverpod'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
