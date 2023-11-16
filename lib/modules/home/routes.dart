import 'package:flutter_template/modules/home/pages/home_page.dart';
import 'package:go_router/go_router.dart';

// TODO: Add example of a modal window with go route

final homeRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  ),
];
