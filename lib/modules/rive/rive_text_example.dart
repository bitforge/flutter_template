import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:rive/rive.dart';

class RiveTextExample extends ConsumerStatefulWidget {
  const RiveTextExample({super.key});

  @override
  ConsumerState<RiveTextExample> createState() => _RivePageState();
}

class _RivePageState extends ConsumerState<RiveTextExample> {
  /// Controller for playback
  late StateMachineController _controller;

  void _onRiveInit(Artboard artboard) {
    // Get State Machine Controller for the state machine called "State Machine 1"
    _controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
      onStateChange: (stateMachineName, stateName) {
        print('stateMachineName: $stateMachineName, stateName: $stateName');
      },
    )!;
    artboard.addController(_controller);

    // Find text runs
    final textImGoing = artboard.textRun('RunImGoing')!;
    final textText = artboard.textRun('RunText')!;
    final textThatIs = artboard.textRun('RunThatIs')!;

    textImGoing.text = 'so geilfasdfasdf!';
    textText.text = 'Rubn';
    textThatIs.text = 'imfall sogar';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Demo'),
      ),
      body: Center(
        child: RiveAnimation.asset(
          'assets/rive/test-text-collage.riv',
          onInit: _onRiveInit,
          stateMachines: ['State Machine 1'],
        ),
      ),
    );
  }
}

extension _TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
