import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/global/info.dart';
import 'package:gap/gap.dart';

void showAppInfo(BuildContext context) {
  final theme = Theme.of(context);
  showModalBottomSheet<void>(
    context: rootNavigatorKey.currentState!.context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'info.text1'.tr(),
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const Gap(16),
                Text(
                  'info.text2'.tr(namedArgs: {'version': packageInfo.version}),
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const Gap(16),
                ElevatedButton(
                  child: Text('info.close'.tr()),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}