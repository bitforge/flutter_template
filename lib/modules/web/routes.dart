import 'package:flutter_template/modules/web/pages/web_page.dart';
import 'package:go_router/go_router.dart';

final webRoutes = <RouteBase>[
  GoRoute(
    path: '/web',
    builder: (context, state) => const WebPage(),
  ),
];
