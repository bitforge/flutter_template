import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';
import 'package:telefonapi/telefonapi.dart';

class DepartmentDetailPage extends StatelessWidget {
  final Dept department;

  const DepartmentDetailPage({required this.department, super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: department.displayName ?? '',
      sections: [
        DetailSection(
          title: 'Allgemein',
          items: [
            DetailItem(title: 'Anzeigename', value: department.displayName),
            DetailItem(title: 'Fachbereich', value: department.dept),
            DetailItem(title: 'Abteilung', value: department.room),
          ],
        ),
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(title: 'Telefon', value: department.phone),
          ],
        ),
      ],
    );
  }
}
