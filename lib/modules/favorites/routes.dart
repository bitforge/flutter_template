import 'package:flutter_template/modules/favorites/pages/favorites_page.dart';
import 'package:go_router/go_router.dart';

final favoritesRoutes = [
  GoRoute(
    path: '/favorites',
    builder: (context, state) => const FavoritesPage(),
  ),
];
