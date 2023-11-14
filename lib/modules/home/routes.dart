import 'package:flutter_template/modules/home/pages/classic_counter.dart';
import 'package:flutter_template/modules/home/pages/home_page.dart';
import 'package:flutter_template/modules/home/pages/riverpod_counter.dart';
import 'package:go_router/go_router.dart';

final homeRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        path: 'classic',
        builder: (context, state) => const ClassicCounterPage(),
      ),
      GoRoute(
        path: 'riverpod',
        builder: (context, state) => const RiverpodCounterPage(),
      ),
    ],
  ),
];
