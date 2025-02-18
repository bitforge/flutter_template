import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/categories.dart';
import 'package:flutter_template/modules/home/widgets/category_tile.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = getCategories('telefonbuchCategories');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Telefonbuch'),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: categories.map((category) {
              return Expanded(
                child: CategoryTile(
                  title: category.title,
                  color: category.color,
                  icon: category.icon,
                  onTap: () {
                    context.push(
                        '/category/${Uri.encodeComponent(category.title)}');
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
