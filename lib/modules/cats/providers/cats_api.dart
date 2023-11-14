import 'package:cats_api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catsApiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    basePath: 'https://api.thecatapi.com',
  );
});
