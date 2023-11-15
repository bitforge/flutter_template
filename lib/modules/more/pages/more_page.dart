import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('more.title'.tr())),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('more.launch_browser'.tr()),
                onPressed: () => _launchBrowser('https://bitforge.ch'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                child: Text('more.change_language'.tr()),
                onPressed: () => _changeLanguage(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchBrowser(String url) {
    final uri = Uri.parse(url);
    // 💡: Try other launch modes
    launchUrl(uri, mode: LaunchMode.inAppWebView);
  }

  void _changeLanguage(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      AppSettings.openAppSettings(type: AppSettingsType.appLocale);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('errors.not_implemented_yet'.tr())),
      );
    }
  }
}
