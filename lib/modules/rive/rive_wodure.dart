import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/rive/flutter_svg.dart';
import 'package:flutter_template/modules/rive/rive_svg.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:rive/rive.dart';

class RiveWoDure extends ConsumerStatefulWidget {
  const RiveWoDure({super.key});

  @override
  ConsumerState<RiveWoDure> createState() => _RivePageState();
}

class _RivePageState extends ConsumerState<RiveWoDure> {
  // Controller for playback

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FlutterSvg(),
                  ),
                );
              },
              child: const Text('SVG'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RiveSvg(),
                  ),
                );
              },
              child: const Text('RIVE'),
            ),
          ],
        ),
      ),
    );
  }
}

extension _TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
