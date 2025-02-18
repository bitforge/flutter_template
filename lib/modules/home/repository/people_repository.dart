// people_repository.dart
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/people_provider.dart';
import 'package:telefonapi/telefonapi.dart';

class PeopleRepository {
  final PeopleApi peopleApi;

  PeopleRepository(this.peopleApi);

  Future<List<Person>> fetchPeople() async {
    try {
      final response = await peopleApi.getPeople();
      print('API response: ${response.data}');
      return response.data?.toList() ?? [];
    } catch (e, stackTrace) {
      print('Error fetching people: $e');
      print(stackTrace);
      rethrow;
    }
  }
}

final peopleRepositoryProvider = Provider<PeopleRepository>((ref) {
  final peopleApi = ref.watch(peopleApiProvider);
  return PeopleRepository(peopleApi);
});
