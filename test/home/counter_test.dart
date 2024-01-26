import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/counter.dart';
import 'package:test/test.dart';

/// A testing utility which creates a [ProviderContainer] and automatically
/// disposes it at the end of the test.
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  addTearDown(container.dispose);
  return container;
}

void main() {
  test('Basic counter functionality', () {
    final container = createContainer();
    final counterNotifier = container.read(counterProvider.notifier);

    // Counter should start with 0
    expect(container.read(counterProvider), equals(0));

    // Counters can be incremented
    counterNotifier.increment();
    expect(container.read(counterProvider), equals(1));

    // Counter can be decremented
    counterNotifier.decrement();
    expect(container.read(counterProvider), equals(0));
  });
}
