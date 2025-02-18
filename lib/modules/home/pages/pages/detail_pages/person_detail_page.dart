import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_outline_button.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';
import 'package:telefonapi/telefonapi.dart';

class PersonDetailPage extends StatelessWidget {
  final Person person;

  const PersonDetailPage({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    String abbreviate(String? value, int maxLength) {
      if (value == null || value.isEmpty) return '';
      return value.length > maxLength ? value.substring(0, maxLength) : value;
    }

    final pageTitle = '${person.firstName} ${person.lastName} '
        '${abbreviate(person.dept, 3)}-${abbreviate(person.dept, 3)}';

    return DetailPage(
      title: pageTitle,
      sections: [
        DetailSection(
          title: 'Allgemein',
          items: [
            DetailItem(title: 'Name', value: person.lastName),
            DetailItem(title: 'Vorname', value: person.firstName),
            DetailItem(title: 'Funktion', value: person.dept),
            DetailItem(title: 'Abteilung', value: person.dept),
          ],
        ),
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(
              title: 'Telefon',
              value: person.phone,
              action: const CustomOutlineButton(),
            ),
            DetailItem(title: 'E-Mail', value: person.mail),
          ],
        ),
      ],
    );
  }
}
