import 'package:flutter/material.dart';

class CategoryItem {
  final String title;
  final Color? color;
  final IconData? icon;

  CategoryItem(this.title, this.color, this.icon);
}

List<CategoryItem> getCategories(String categoryType) {
  switch (categoryType) {
    case 'telefonbuchCategories':
      return [
        CategoryItem('Alle', Colors.lightGreen, null),
        CategoryItem('Personen', Colors.green, null),
        CategoryItem('Funktionen', Colors.green[800], null),
        CategoryItem('Notfälle & Reanimation', Colors.red, Icons.warning),
        CategoryItem('Favoriten', Colors.brown[400], null),
      ];
    case 'funktionenCategories':
      return [
        CategoryItem('Alle', Colors.lightGreen, null),
        CategoryItem('OKS', Colors.green[500], null),
        CategoryItem('YLM', Colors.green[800], null),
        CategoryItem('RBSZ', Colors.lightBlue, null),
      ];
    case 'notfaelleCategories':
      return [
        CategoryItem('Alle', Colors.lightGreen, null),
        CategoryItem('OKS', Colors.green[500], null),
      ];
    case 'personenCategories':
      return [
        CategoryItem('Alle', Colors.lightGreen, null),
        CategoryItem('Rettung', Colors.blue, null),
        CategoryItem('HOCH', const Color.fromARGB(255, 6, 62, 71), null),
      ];
    default:
      return [];
  }
}
