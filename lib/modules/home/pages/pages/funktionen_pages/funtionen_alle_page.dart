import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/funtionen_alle_list.dart';
import 'package:flutter_template/modules/home/widgets/dynamic_list_page.dart';
import 'package:go_router/go_router.dart';

class FunktionenAllePage extends StatelessWidget {
  final String title;

  const FunktionenAllePage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicListPage(
      title: title,
      items: funktionen,
      itemBuilder: (context, item) {
        return ListTile(
          title: Text(item['anzeigename']!),
          subtitle: Text(item['fachbereich']!),
          onTap: () {
            context.push('/funktionDetail', extra: item);
          },
        );
      },
    );
  }
}
