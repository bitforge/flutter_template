import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/personen_alle_list.dart';
import 'package:flutter_template/modules/home/widgets/dynamic_list_page.dart';
import 'package:go_router/go_router.dart';

class PersonenRettungPage extends StatelessWidget {
  final String title;

  const PersonenRettungPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicListPage(
      title: title,
      items: personen,
      itemBuilder: (context, item) {
        return ListTile(
          title: Text('${item['name']!} ${item['vorname']!}'),
          subtitle: Text('${item['fachbereich']!} ${item['abteilung']!}'),
          onTap: () {
            context.push('/personDetail', extra: item);
          },
        );
      },
    );
  }
}
