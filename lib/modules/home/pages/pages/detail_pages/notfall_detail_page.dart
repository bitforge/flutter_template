import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';

class NotfallDetailPage extends StatelessWidget {
  final Map<String, String> notfall;

  const NotfallDetailPage({required this.notfall, super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: notfall['name'] ?? '',
      sections: [
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(title: 'Telefon', value: notfall['telefon']),
          ],
        ),
        DetailSection(
          title: 'Details',
          items: [
            DetailItem(title: 'Arbeitsort', value: notfall['arbeitsort']),
          ],
        ),
      ],
    );
  }
}

// To add later 0xFF0000F5 to the color
