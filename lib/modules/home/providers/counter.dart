import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter());

// TODO: Maybe use new Notifier

/// Simple counter provider
class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    if (state > 0) {
      state--;
    }
  }
}
