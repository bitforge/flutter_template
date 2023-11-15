import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/doge/providers/shibe_client_provider.dart';

/// Provides for a list of doge image urls
final dogeImagesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final shibeClient = ref.read(shibeClientProvider);
  final shibeResponse = await shibeClient.get<List<dynamic>>('shibes?count=10');
  if (shibeResponse.statusCode != 200 || shibeResponse.data == null) {
    log('Failed to get doge images: $shibeResponse');
    return [];
  }

  return List<String>.from(shibeResponse.data!);
});
