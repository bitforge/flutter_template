import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/telefonapi_provider.dart';
import 'package:telefonapi/telefonapi.dart';

final departmentsProvider = Provider<DepartmentsApi>((ref) {
  final telefonapi = ref.watch(telefonapiProvider);
  return telefonapi.getDepartmentsApi();
});
