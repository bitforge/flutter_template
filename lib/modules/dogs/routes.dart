import 'package:flutter_template/modules/dogs/pages/dogs_page.dart';
import 'package:go_router/go_router.dart';

final dogRoutes = [
  GoRoute(
    path: '/dogs',
    builder: (context, state) => const DogsPage(),
  ),
];
