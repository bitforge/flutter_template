import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = NotifierProvider<CounterNotifier, int>(CounterNotifier.new);

/// Simple counter provider
class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0;

  static int kMin = 0;
  static int kMax = 10;

  void increment() {
    if (state < kMax) {
      state++;
    }
  }

  void decrement() {
    if (state > kMin) {
      state--;
    }
  }
}
