import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/categories.dart';
import 'package:flutter_template/modules/home/widgets/category_tile.dart';
import 'package:flutter_template/modules/home/widgets/custom_appbar.dart';
import 'package:go_router/go_router.dart';

class NotfaelleCategories extends StatelessWidget {
  final String title;

  const NotfaelleCategories({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final categories = getCategories('notfaelleCategories');

    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SafeArea(
        child: Column(
          children: categories.map((category) {
            return Expanded(
              child: CategoryTile(
                title: category.title,
                color: category.color,
                icon: category.icon,
                onTap: () {
                  context.push(
                    '/category/notfaelle/${Uri.encodeComponent(category.title)}',
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
