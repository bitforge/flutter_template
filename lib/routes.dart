import 'package:flutter/material.dart';
import 'package:flutter_template/modules/cats/routes.dart';
import 'package:flutter_template/modules/home/routes.dart';
import 'package:flutter_template/modules/web/routes.dart';
import 'package:flutter_template/shell.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root_navigator');
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home_navigator');
final catsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'cats_navigator');
final webNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'web_navigator');
final moreNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'more_navigator');

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    /// Holds all tab root pages
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => RootNavigationShell(navigationShell: navigationShell),
      branches: [
        /// Home tab
        StatefulShellBranch(
          navigatorKey: homeNavigatorKey,
          routes: homeRoutes,
        ),

        /// Cats tab
        StatefulShellBranch(
          navigatorKey: catsNavigatorKey,
          routes: catRoutes,
        ),

        /// Web tab
        StatefulShellBranch(
          navigatorKey: webNavigatorKey,
          routes: webRoutes,
        ),
      ],
    ),
  ],
);
