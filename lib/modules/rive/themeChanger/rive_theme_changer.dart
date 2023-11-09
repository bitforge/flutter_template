import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:rive/rive.dart';

class RiveThemeChanger extends ConsumerStatefulWidget {
  const RiveThemeChanger({super.key});

  @override
  ConsumerState<RiveThemeChanger> createState() => _RivePageState();
}

class _RivePageState extends ConsumerState<RiveThemeChanger> {
  /// Controller for playback
  late StateMachineController _controller;

  void _onRiveInit(Artboard artboard) {
    final darkModeNotifier = ref.read(darkModeProvider.notifier);

    // Get State Machine Controller for the state machine called "State Machine 1"
    _controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
      onStateChange: (stateMachineName, stateName) {
        if (stateName == 'Night') {
          darkModeNotifier.setDarkMode(value: true);
        } else if (stateName == 'Day') {
          darkModeNotifier.setDarkMode(value: false);
        }
      },
    )!;
    artboard.addController(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Demo'),
      ),
      body: Center(
        child: RiveAnimation.asset(
          'assets/rive/day-to-night-switch.riv',
          onInit: _onRiveInit,
          stateMachines: ['State Machine 1'],
        ),
      ),
    );
  }
}
