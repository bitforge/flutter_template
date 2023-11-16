import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/counter_button.dart';
import 'package:gap/gap.dart';

class ClassicCounter extends StatefulWidget {
  const ClassicCounter({super.key});

  @override
  State<ClassicCounter> createState() => _ClassicCounterState();
}

class _ClassicCounterState extends State<ClassicCounter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    if (_counter <= 0) return;

    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterButton(
                  icon: Icons.remove,
                  onPressed: _decrement,
                  tooltip: 'counter.decrement'.tr(),
                ),
                const Gap(16),
                CounterButton(
                  icon: Icons.add,
                  onPressed: _increment,
                  tooltip: 'counter.increment'.tr(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
