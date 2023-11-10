import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:rive/rive.dart';

class FlutterSvg extends ConsumerStatefulWidget {
  const FlutterSvg({super.key});

  @override
  ConsumerState<FlutterSvg> createState() => _RivePageState();
}

class _RivePageState extends ConsumerState<FlutterSvg> {
  // Controller for playback

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Demo'),
      ),
      body: Center(
        child: SvgPicture.asset(
          'assets/svg/fooby_welcome.svg',
          semanticsLabel: 'My SVG Image',
          height: 258,
          width: 258,
        ),
      ),
    );
  }
}

extension _TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
