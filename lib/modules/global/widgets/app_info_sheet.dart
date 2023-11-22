import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/global/providers/package_info.dart';
import 'package:gap/gap.dart';
import 'package:sheet/sheet.dart';

class AppInfoSheet extends ConsumerWidget {
  const AppInfoSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.read(packageInfoProvider);
    final theme = Theme.of(context);
    return Sheet(
      initialExtent: 240,
      physics: const NeverDraggableSheetPhysics(),
      child: Container(
        color: Colors.red,
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
    );
  }
}
