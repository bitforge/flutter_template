import 'package:flutter_template/modules/cats/pages/cats_page.dart';
import 'package:go_router/go_router.dart';

final catRoutes = <RouteBase>[
  GoRoute(
    path: '/cats',
    builder: (context, state) => const CatsPage(),
  ),
];
