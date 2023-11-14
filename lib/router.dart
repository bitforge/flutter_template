import 'package:flutter/foundation.dart';
import 'package:flutter_template/modules/cats/routes.dart';
import 'package:flutter_template/modules/home/routes.dart';
import 'package:flutter_template/modules/more/routes.dart';
import 'package:flutter_template/shell.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: kDebugMode,
  routes: <RouteBase>[
    /// Holds all tab root pages
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootShell(navigationShell: navigationShell),
      branches: [
        /// Home
        StatefulShellBranch(
          routes: homeRoutes,
          initialLocation: '/home',
        ),

        /// Cats
        StatefulShellBranch(
          routes: catRoutes,
          initialLocation: '/cats',
        ),

        /// Web
        StatefulShellBranch(
          routes: moreRoutes,
          initialLocation: '/more',
        ),
      ],
    ),
  ],
);
