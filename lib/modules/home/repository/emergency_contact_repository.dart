import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/emergency_contact_provider.dart';
import 'package:telefonapi/telefonapi.dart';

class EmergencyContactRepository {
  final EmergencycontactsApi emergencyContactApi;

  EmergencyContactRepository(this.emergencyContactApi);

  Future<List<EmergencyContact>> fetchEmergencyContacts() async {
    try {
      final response = await emergencyContactApi.getEmergencyContacts();
      print('API response: ${response.data}');
      return response.data?.toList() ?? [];
    } catch (e, stackTrace) {
      print('Error fetching emergency contacts: $e');
      print(stackTrace);
      rethrow;
    }
  }
}

final emergencyContactRepositoryProvider =
    Provider<EmergencyContactRepository>((ref) {
  final emergencyContactApi = ref.watch(emergencyContactProvider);
  return EmergencyContactRepository(emergencyContactApi);
});
