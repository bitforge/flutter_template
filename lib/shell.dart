import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final currentTabProvider = StateProvider<int>((ref) => 0);

class RootShell extends ConsumerWidget {
  const RootShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentTabProvider);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'home.nav'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.pets),
            label: 'doge.nav'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.more_horiz),
            label: 'more.nav'.tr(),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          // A common pattern when using bottom navigation bars is to support navigating
          // back to the initial location when tapping the item that is  already active.
          final popToRoot = index == navigationShell.currentIndex;
          navigationShell.goBranch(index, initialLocation: popToRoot);
          ref.read(currentTabProvider.notifier).state = index;
        },
      ),
    );
  }
}
