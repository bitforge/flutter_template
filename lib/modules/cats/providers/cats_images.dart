import 'dart:convert';
import 'dart:developer';

import 'package:cats_api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/cats/providers/cats_api.dart';

final catsImagesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final catsApiClient = ref.watch(catsApiClientProvider);
  final catImagesApi = ImagesApi(catsApiClient);
  final catSearchResponse = await catImagesApi.imagesSearchGetWithHttpInfo(format: 'json', limit: 10);

  // Ignore bad http resonses
  if (catSearchResponse.statusCode != 200) {
    log('${catSearchResponse.reasonPhrase}:\n${catSearchResponse.body}', name: 'CatsImagesProvider');
    return [];
  }

  // Cats API does not specify an OpenAPI response type for search results
  // This is an example how to avoid this scenario
  final catImageArray = jsonDecode(catSearchResponse.body) as List<dynamic>;
  final catImagesObjects = catImageArray.map((cat) => cat as Map<String, dynamic>).toList();
  final images = catImagesObjects.map((cat) => cat['url'] as String? ?? '').toList();

  return images;
});
