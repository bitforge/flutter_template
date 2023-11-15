import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dio = Dio();

/// Simple shibes as service API
/// Docs: https://shibe.online
///
/// For extensive REST APIs & OpenAPI Generator, checkout mySWICA project:
/// https://github.com/bitforge/myswica/blob/main/api/myswicaapi/generate.sh
///
final shibeImagesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final shibeResponse = await dio.get<List<dynamic>>('http://shibe.online/api/shibes?count=10');

  if (shibeResponse.statusCode != 200 || shibeResponse.data == null) {
    log('Failed to get shibes: $shibeResponse');
    return [];
  }

  return List<String>.from(shibeResponse.data!);
});
