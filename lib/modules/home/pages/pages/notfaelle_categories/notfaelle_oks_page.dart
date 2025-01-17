import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/pages/dummy_list_pages/notfaelle_alle_list.dart';
import 'package:flutter_template/modules/home/widgets/dynamic_list_page.dart';
import 'package:go_router/go_router.dart';

class NotfaelleOksPage extends StatelessWidget {
  final String title;

  const NotfaelleOksPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicListPage(
      title: title,
      items: emergencyContacts,
      itemBuilder: (context, item) {
        return ListTile(
          title: Text(item['name']!),
          subtitle: Text(item['arbeitsort']!),
          onTap: () {
            context.push('/notfallDetail', extra: item);
          },
        );
      },
    );
  }
}
