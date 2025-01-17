import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/funtionen_alle_list.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/notfaelle_alle_list.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/personen_alle_list.dart';
import 'package:flutter_template/modules/home/widgets/dynamic_list_page.dart';
import 'package:go_router/go_router.dart';

class AllEntriesPage extends StatelessWidget {
  final String title;

  const AllEntriesPage({required this.title, super.key});

  List<Map<String, String>> _getAllItems() {
    final items = [
      ...funktionen.map((item) => {'type': 'funktionen', ...item}),
      ...emergencyContacts
          .map((item) => {'type': 'emergencyContacts', ...item}),
      ...personen.map((item) => {'type': 'personen', ...item}),
    ]..sort((a, b) {
        final aName = (a['name'] ?? a['anzeigename'] ?? '').toLowerCase();
        final bName = (b['name'] ?? b['anzeigename'] ?? '').toLowerCase();
        return aName.compareTo(bName);
      });

    return items;
  }

  Widget _buildListItem(BuildContext context, Map<String, String> item) {
    switch (item['type']) {
      case 'funktionen':
        return ListTile(
          title: Text(item['anzeigename'] ?? ''),
          subtitle: Text(item['fachbereich'] ?? ''),
          onTap: () {
            context.push('/funktionDetail', extra: item);
          },
        );
      case 'emergencyContacts':
        return ListTile(
          title: Text(item['name'] ?? ''),
          subtitle: Text(item['arbeitsort'] ?? ''),
          onTap: () {
            context.push('/notfallDetail', extra: item);
          },
        );
      case 'personen':
        return ListTile(
          title: Text('${item['name']} ${item['vorname']}'),
          subtitle: Text(
            '${item['fachbereich']} ${item['abteilung']}',
          ),
          onTap: () {
            context.push('/personDetail', extra: item);
          },
        );
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DynamicListPage(
      title: title,
      items: _getAllItems(),
      itemBuilder: _buildListItem,
    );
  }
}
