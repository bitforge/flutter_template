import 'package:flutter_template/modules/doge/pages/doge_detail_page.dart';
import 'package:flutter_template/modules/doge/pages/doge_page.dart';
import 'package:go_router/go_router.dart';

final dogeRoutes = [
  GoRoute(
    path: '/doge',
    builder: (context, state) => const DogePage(),
    routes: [
      GoRoute(
        path: 'detail/:imgUrl',
        builder: (context, state) => DogeDetailPage(
          imageUrl: Uri.decodeComponent(state.pathParameters['imgUrl']!),
        ),
      ),
    ],
  ),
];
