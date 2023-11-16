import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/counter.dart';
import 'package:flutter_template/modules/home/widgets/counter_button.dart';
import 'package:gap/gap.dart';

class RiverpodCounter extends ConsumerWidget {
  const RiverpodCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${ref.watch(counterProvider)}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterButton(
                  icon: Icons.remove,
                  onPressed: ref.read(counterProvider.notifier).decrement,
                  tooltip: 'counter.decrement'.tr(),
                ),
                const Gap(16),
                CounterButton(
                  icon: Icons.add,
                  onPressed: ref.read(counterProvider.notifier).increment,
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
