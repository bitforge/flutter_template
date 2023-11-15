import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Simple shibes as service client
/// Docs: https://shibe.online
///
/// For a complete example of an OpenAPI / REST Client, see mySWICA API:
/// https://github.com/bitforge/myswica/blob/main/api/myswicaapi/generate.sh
///
///
final shibeClientProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'https://shibe.online/api/',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );
});
