import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_appbar.dart';
import 'package:flutter_template/modules/home/widgets/standard_button.dart';

class InfoPage extends StatelessWidget {
  final String title;

  const InfoPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  const [
                    Text('Version 1x.x.x'),
                    Text('Letzer Datenabgleich:'),
                    Text('01.01.2025 12:00'),
                    SizedBox(height: 8),
                    Text(
                      'Support',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bei Problemen oder Störungen mit der App erstellen Sie bitte ein Heat-Ticket.',
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bei Unstimmigkeiten bitte die Daten manuell aktualisieren (Reload-Pfeil in Alle Kontakte).',
                    ),
                    SizedBox(height: 8),
                    Text(
                      'First Example Text',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'https://www.google.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                    //random url
                    Text(
                      'https://www.example.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'https://wwww.youtube.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Anzahl Personenkontakte: 1000',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Exportstart: 01.01.2025 12:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Exportabschluss: 01.01.2025 12:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Letzte Updateversuche im Hintergrund:\n01.01.2025 12:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '01.01.2025 11:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '01.01.2025 10:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '01.01.2025 09:00',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Berechtigung Kontakte schreiben: Ja',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Berechtigung Kontakte lesen: Ja',
                      style: TextStyle(color: Colors.grey),
                    ),
                    StandardButton(
                      buttonText: 'Kontakte exportieren',
                    ),
                    StandardButton(
                      buttonText: 'Kontakte löschen',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
