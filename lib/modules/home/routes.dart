import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/global/widgets/app_info_sheet.dart';
import 'package:flutter_template/modules/home/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/route.dart';

// TODO: Add example of a modal window with go route

final homeRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        path: 'app_info',
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) {
          return const SheetPage(child: AppInfoSheet());
        },
      ),
    ],
  ),
];
