import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/departments_provider.dart';
import 'package:telefonapi/telefonapi.dart';

class DepartmentRepository {
  final DepartmentsApi departmentsApi;

  DepartmentRepository(this.departmentsApi);

  Future<List<Dept>> fetchDepartments() async {
    try {
      final response = await departmentsApi.getDepartments();
      print('API response: ${response.data}');
      return response.data?.toList() ?? [];
    } catch (e, stackTrace) {
      print('Error fetching departments: $e');
      print(stackTrace);
      rethrow;
    }
  }
}

final departmentRepositoryProvider = Provider<DepartmentRepository>((ref) {
  final departmentsApi = ref.watch(departmentsProvider);
  return DepartmentRepository(departmentsApi);
});
