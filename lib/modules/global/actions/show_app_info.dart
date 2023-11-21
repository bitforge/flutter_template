import 'package:flutter/material.dart';
import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/global/widgets/app_info_sheet.dart';

void showAppInfo(BuildContext context) {
  showModalBottomSheet<void>(
    // Global overlay
    context: rootNavigatorKey.currentState!.context,
    // Local overlay
    //context: context,
    builder: (BuildContext context) {
      return const AppInfoSheet();
    },
  );
}
