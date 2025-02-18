import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/repository/emergency_contact_repository.dart';
import 'package:telefonapi/telefonapi.dart';

final emergencyContactFutureProvider =
    FutureProvider<List<EmergencyContact>>((ref) async {
  final repository = ref.watch(emergencyContactRepositoryProvider);
  return repository.fetchEmergencyContacts();
});
