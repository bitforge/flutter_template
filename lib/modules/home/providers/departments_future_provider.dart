import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/repository/dept_repository.dart';
import 'package:telefonapi/telefonapi.dart';

final departmentsFutureProvider = FutureProvider<List<Dept>>((ref) async {
  final repository = ref.watch(departmentRepositoryProvider);
  return repository.fetchDepartments();
});
