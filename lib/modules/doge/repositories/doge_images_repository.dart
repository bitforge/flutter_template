import 'dart:developer';

import 'package:dio/dio.dart';

class DogeImagesRepository {
  DogeImagesRepository(this.shibeClient);

  /// https://shibe.online API client
  final Dio shibeClient;

  /// Returns for a list of doge image urls
  Future<List<String>> getDogeImages(int count) async {
    final shibeResponse = await shibeClient.get<List<dynamic>>('shibes?count=$count');
    if (shibeResponse.statusCode != 200 || shibeResponse.data == null) {
      log('Failed to get doge images: $shibeResponse', name: 'DogeImagesRepository');
      return [];
    }

    return List<String>.from(shibeResponse.data!);
  }
}
