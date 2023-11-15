import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

const kDogImagesCount = 10;

final dogImagesProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final shibeApiUrl = Uri.parse('http://shibe.online/api/shibes?count=$kDogImagesCount');
  final shibeResponse = await http.get(shibeApiUrl);

  if (shibeResponse.statusCode != 200) {
    log('Failed to get dogs: $shibeResponse');
    return [];
  }

  final resultList = jsonDecode(shibeResponse.body) as List<dynamic>;
  return resultList.cast<String>();
});
