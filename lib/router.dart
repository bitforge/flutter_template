import 'package:flutter/foundation.dart';
import 'package:flutter_template/constants/keys.dart';
import 'package:flutter_template/modules/emergency/routes.dart';
import 'package:flutter_template/modules/favorites/routes.dart';
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
      builder: (context, state, navigationShell) =>
          RootShell(navigationShell: navigationShell),
      branches: [
        // Home
        StatefulShellBranch(
          routes: homeRoutes,
          initialLocation: '/home',
          navigatorKey: homeNavigatorKey,
        ),
        // Emergency
        StatefulShellBranch(
          routes: emergencyRoutes,
          initialLocation: '/emergency',
          navigatorKey: emergencyNavigatorKey,
        ),
        // Favorites
        StatefulShellBranch(
          routes: favoritesRoutes,
          initialLocation: '/favorites',
          navigatorKey: favoritesNavigatorKey,
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
