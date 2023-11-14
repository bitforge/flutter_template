import 'package:cats_api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/cats/providers/cats_api.dart';

final catsImagesProvider = FutureProvider<List<String>>((ref) async {
  final catsApiClient = ref.watch(catsApiClientProvider);
  final catImagesApi = ImagesApi(catsApiClient);
  final catImages = await catImagesApi.imagesSearchGet(
    limit: 20,
    page: 0,
  );

  if (catImages == null) {
    return [];
  }

  // Cats API does not specify search results response type
  // This is an example how to avoid this scenario
  final catObjects = List<Map<String, dynamic>>.from(catImages as Iterable);
  final images = catObjects.map((cat) => cat['url'] as String? ?? '').toList();

  return images;
});
