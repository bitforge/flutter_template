import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_outline_button.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';

class PersonDetailPage extends StatelessWidget {
  final Map<String, String> person;

  const PersonDetailPage({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    String abbreviate(String? value, int maxLength) {
      if (value == null || value.isEmpty) return '';
      return value.substring(0, value.length.clamp(0, maxLength));
    }

    final pageTitle =
        '${person['vorname']} ${person['name']} ${abbreviate(person['funktion'], 3)}-${abbreviate(person['abteilung'], 3)}';

    return DetailPage(
      title: pageTitle,
      sections: [
        DetailSection(
          title: 'Allgemein',
          items: [
            DetailItem(title: 'Name', value: person['name']),
            DetailItem(title: 'Vorname', value: person['vorname']),
            DetailItem(title: 'Funktion', value: person['funktion']),
            DetailItem(title: 'Fachbereich', value: person['fachbereich']),
            DetailItem(title: 'Abteilung', value: person['abteilung']),
          ],
        ),
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(
                title: 'Telefon',
                value: person['telefon'],
                action: const CustomOutlineButton()),
            DetailItem(title: 'E-Mail', value: person['email']),
          ],
        ),
      ],
    );
  }
}

// To add later 0xFF0000F5 to the color
