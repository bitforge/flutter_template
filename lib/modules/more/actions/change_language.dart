import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void changeLanguage(BuildContext context) {
  if (Platform.isAndroid || Platform.isIOS) {
    AppSettings.openAppSettings(type: AppSettingsType.appLocale);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('errors.not_implemented_yet'.tr())),
    );
  }
}
