import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/modules/more/actions/change_language.dart';
import 'package:flutter_template/modules/more/actions/launch_browser.dart';
import 'package:flutter_template/modules/more/widgets/app_info_sheet.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('more.title'.tr()),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet<AppInfoSheet>(
                context: context,
                useRootNavigator: true,
                builder: (context) => const AppInfoSheet(),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('more.launch_browser'.tr()),
                onPressed: () => launchBrowser('https://bitforge.ch'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('more.change_language'.tr()),
                onPressed: () => changeLanguage(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
