import 'package:flutter/foundation.dart';
import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/dogs/routes.dart';
import 'package:flutter_template/modules/home/routes.dart';
import 'package:flutter_template/modules/more/routes.dart';
import 'package:flutter_template/shell.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  debugLogDiagnostics: kDebugMode,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootShell(navigationShell: navigationShell),
      branches: [
        // Home
        StatefulShellBranch(
          routes: homeRoutes,
          initialLocation: '/home',
          navigatorKey: homeNavigatorKey,
        ),

        // Dogs
        StatefulShellBranch(
          routes: dogRoutes,
          initialLocation: '/dogs',
          navigatorKey: dogsNavigatorKey,
        ),

        // More
        StatefulShellBranch(
          routes: moreRoutes,
          initialLocation: '/more',
          navigatorKey: moreNavigatorKey,
        ),
      ],
    ),
  ],
);
