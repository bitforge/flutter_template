import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/global/widgets/app_info_sheet.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/route.dart';

final globalRoutes = [
  GoRoute(
    path: 'app_info',
    parentNavigatorKey: rootNavigatorKey,
    pageBuilder: (context, state) {
      return const SheetPage(child: AppInfoSheet());
    },
  ),
];
