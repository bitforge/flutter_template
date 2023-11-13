import 'package:flutter/material.dart';
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
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const ScreenA(),
            ),
            GoRoute(
              path: '/home/details',
              builder: (BuildContext context, GoRouterState state) {
                return const DetailsScreen(label: 'Home');
              },
            ),
          ],
        ),

        /// Cats tab
        StatefulShellBranch(
          navigatorKey: catsNavigatorKey,
          routes: [
            GoRoute(
              path: '/cats',
              builder: (context, state) => const ScreenB(),
            ),
            GoRoute(
              path: '/cats/details',
              builder: (BuildContext context, GoRouterState state) {
                return const DetailsScreen(label: 'Cat');
              },
            ),
          ],
        ),

        /// Web tab
        StatefulShellBranch(
          navigatorKey: webNavigatorKey,
          routes: [
            GoRoute(
              path: '/web',
              builder: (context, state) => const ScreenC(),
            ),
            GoRoute(
              path: '/web/details',
              builder: (BuildContext context, GoRouterState state) {
                return const DetailsScreen(label: 'Web');
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

/// The first screen in the bottom navigation bar.
class ScreenA extends StatelessWidget {
  /// Constructs a [ScreenA] widget.
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen A'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/home/details');
              },
              child: const Text('View A details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The second screen in the bottom navigation bar.
class ScreenB extends StatelessWidget {
  /// Constructs a [ScreenB] widget.
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen B'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/cats/details');
              },
              child: const Text('View B details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The third screen in the bottom navigation bar.
class ScreenC extends StatelessWidget {
  /// Constructs a [ScreenC] widget.
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Screen C'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/web/details');
              },
              child: const Text('View C details'),
            ),
          ],
        ),
      ),
    );
  }
}

/// The details screen for either the A, B or C screen.
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen].
  const DetailsScreen({
    required this.label,
    super.key,
  });

  /// The label to display in the center of the screen.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Text(
          'Details for $label',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
