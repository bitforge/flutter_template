import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/detail_page.dart';

class FunktionDetailPage extends StatelessWidget {
  final Map<String, String> funktion;

  const FunktionDetailPage({required this.funktion, super.key});

  @override
  Widget build(BuildContext context) {
    return DetailPage(
      title: funktion['anzeigename'] ?? '',
      sections: [
        DetailSection(
          title: 'Allgemein',
          items: [
            DetailItem(title: 'Anzeigename', value: funktion['anzeigename']),
            DetailItem(title: 'Fachbereich', value: funktion['fachbereich']),
            DetailItem(title: 'Abteilung', value: funktion['abteilung']),
          ],
        ),
        DetailSection(
          title: 'Telefon',
          items: [
            DetailItem(title: 'Telefon', value: funktion['telefon']),
          ],
        ),
      ],
    );
  }
}

// To add later 0xFF0000F5 to the color
