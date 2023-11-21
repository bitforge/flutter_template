import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/global/widgets/app_info_sheet.dart';
import 'package:go_router/go_router.dart';
//import 'package:sheet/route.dart';

final globalRoutes = [
  GoRoute(
    path: '/app_info',
    parentNavigatorKey: rootNavigatorKey,
    builder: (context, state) {
      // TODO: Figure out how to show as model bottom sheet
      return const AppInfoSheet();
    },
  ),
];
