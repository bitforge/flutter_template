import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ClassicCounterPage extends StatefulWidget {
  const ClassicCounterPage({super.key});

  @override
  State<ClassicCounterPage> createState() => _ClassicCounterPageState();
}

class _ClassicCounterPageState extends State<ClassicCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home.counter_classic'.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('home.counter_text'.tr()),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
