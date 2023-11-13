import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentTabProvider = StateProvider<int>((ref) => 0);

class RootNavigationShell extends ConsumerWidget {
  const RootNavigationShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentTabProvider);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Cats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Web',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more_horiz),
          //   label: 'More',
          // ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          navigationShell.goBranch(index);
          ref.read(currentTabProvider.notifier).state = index;
        },
      ),
    );
  }
}
