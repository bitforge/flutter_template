import 'package:flutter/foundation.dart';
import 'package:flutter_template/modules/cats/routes.dart';
import 'package:flutter_template/modules/home/routes.dart';
import 'package:flutter_template/modules/web/routes.dart';
import 'package:flutter_template/shell.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: kDebugMode,
  routes: <RouteBase>[
    /// Holds all tab root pages
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootNavigationShell(navigationShell: navigationShell),
      branches: [
        /// Home
        StatefulShellBranch(routes: homeRoutes),

        /// Cats
        StatefulShellBranch(routes: catRoutes),

        /// Web
        StatefulShellBranch(routes: webRoutes),
      ],
    ),
  ],
);
