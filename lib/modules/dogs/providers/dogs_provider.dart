import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

/// Simple shibes as service API
/// Docs: https://shibe.online
///
/// For extensive REST APIs & OpenAPI Generator, checkout mySWICA project:
/// https://github.com/bitforge/myswica/blob/main/api/myswicaapi/generate.sh
///
final shibeImagesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final shibeApiUrl = Uri.parse('http://shibe.online/api/shibes?count=10');
  final shibeResponse = await http.get(shibeApiUrl);

  if (shibeResponse.statusCode != 200) {
    log('Failed to get shibes: $shibeResponse');
    return [];
  }

  final resultList = jsonDecode(shibeResponse.body) as List<dynamic>;
  return resultList.cast<String>();
});
