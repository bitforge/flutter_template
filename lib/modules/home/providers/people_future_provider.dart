// people_future_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/repository/people_repository.dart';
import 'package:telefonapi/telefonapi.dart';

final peopleFutureProvider = FutureProvider<List<Person>>((ref) async {
  final repository = ref.watch(peopleRepositoryProvider);
  return repository.fetchPeople();
});
