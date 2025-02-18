import 'package:flutter_template/modules/emergency/pages/emergency_contact_detail_page.dart';
import 'package:flutter_template/modules/emergency/pages/emergency_contacts_alle_page.dart';
import 'package:go_router/go_router.dart';
import 'package:telefonapi/telefonapi.dart';

final emergencyRoutes = [
  GoRoute(
    path: '/emergency',
    builder: (context, state) => const EmergencyAllePage(
      title: 'Notfall',
    ),
  ),
  GoRoute(
    path: '/emergencyContactDetail',
    builder: (context, state) {
      final emergencyContact = state.extra! as EmergencyContact;
      return EmergencyContactDetailPage(emergencyContact: emergencyContact);
    },
  ),
];
