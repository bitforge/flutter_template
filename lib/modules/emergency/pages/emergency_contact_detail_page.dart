import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';
import 'package:telefonapi/telefonapi.dart'; // Import your Notfall model

class EmergencyContactDetailPage extends StatelessWidget {
  final EmergencyContact emergencyContact;

  const EmergencyContactDetailPage({required this.emergencyContact, super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: emergencyContact.displayName ?? '',
      sections: [
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(title: 'Telefon', value: emergencyContact.phone),
          ],
        ),
      ],
    );
  }
}
