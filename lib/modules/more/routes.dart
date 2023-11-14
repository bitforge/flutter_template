import 'package:flutter_template/modules/more/pages/more_page.dart';
import 'package:go_router/go_router.dart';

final moreRoutes = [
  GoRoute(
    path: '/more',
    builder: (context, state) => const MorePage(),
  ),
];
