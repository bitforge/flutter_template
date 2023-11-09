import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/rive/themeChanger/theme_provider.dart';
import 'package:rive/rive.dart';

class RiveSvg extends ConsumerStatefulWidget {
  const RiveSvg({super.key});

  @override
  ConsumerState<RiveSvg> createState() => _RivePageState();
}

class _RivePageState extends ConsumerState<RiveSvg> {
  // Controller for playback
  Artboard? _riveArtboard;

  @override
  void initState() {
    super.initState();

    rootBundle.load('assets/rive/fooby-welcome.riv').then(
      (data) async {
        final file = RiveFile.import(data);

        final artboard = file.mainArtboard;
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Demo'),
      ),
      body: Center(
          child: _riveArtboard == null
              ? const SizedBox()
              : SizedBox(
                  width: 300,
                  height: 300,
                  child: Rive(
                    artboard: _riveArtboard!.instance(),
                  ),
                )),
    );
  }
}

extension _TextExtension on Artboard {
  TextValueRun? textRun(String name) => component<TextValueRun>(name);
}
