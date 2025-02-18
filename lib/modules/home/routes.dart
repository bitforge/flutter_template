import 'package:flutter_template/modules/home/pages/home_page.dart';
import 'package:flutter_template/modules/home/pages/pages/all_categories_page.dart';
import 'package:flutter_template/modules/home/pages/pages/departments_alle_page.dart';
import 'package:flutter_template/modules/home/pages/pages/detail_pages/department_detail_page.dart';
import 'package:flutter_template/modules/home/pages/pages/detail_pages/person_detail_page.dart';
import 'package:flutter_template/modules/home/pages/pages/info_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_categories.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_alle_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_hoch_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_rettung_page.dart';
import 'package:go_router/go_router.dart';
import 'package:telefonapi/telefonapi.dart';

final homeRoutes = [
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/info',
    builder: (context, state) => const InfoPage(title: 'Info'),
  ),
  GoRoute(
    path: '/category/:title',
    builder: (context, state) {
      final title = state.pathParameters['title']!;
      switch (title.toLowerCase()) {
        case 'alle':
          return const AllEntriesPage(title: 'Alle Einträge');
        case 'personen':
          return const PersonenCategories(title: 'Personen');
        case 'funktionen':
          return const DepartmentsAllePage(title: 'Departments');
        case 'favoriten':
          return const AllEntriesPage(title: 'Favoriten');
        default:
          return const HomePage();
      }
    },
  ),
  // Subcategory routes for Personen
  GoRoute(
    path: '/category/personen/:subcategory',
    builder: (context, state) {
      final subcategory = state.pathParameters['subcategory']!;
      switch (subcategory.toLowerCase()) {
        case 'alle':
          return const PersonenAllePage(title: 'Personen Alle');
        case 'rettung':
          return const PersonenRettungPage(title: 'Personen Rettung');
        case 'hoch':
          return const PersonenHochPage(title: 'Personen HOCH');
        default:
          return const HomePage();
      }
    },
  ),
  // Subcategory routes for Funktionen
  GoRoute(
    path: '/category/funktionen/:subcategory',
    builder: (context, state) {
      final subcategory = state.pathParameters['subcategory']!;
      switch (subcategory.toLowerCase()) {
        case 'alle':
          return const DepartmentsAllePage(title: 'Funktionen Alle');
        default:
          return const HomePage();
      }
    },
  ),
  // Personen Details Page
  GoRoute(
    path: '/personDetail',
    builder: (context, state) {
      final person = state.extra! as Person;
      return PersonDetailPage(person: person);
    },
  ),
  // Funktionen Details Page
  GoRoute(
    path: '/deparmentDetail',
    builder: (context, state) {
      final department = state.extra! as Dept;
      return DepartmentDetailPage(department: department);
    },
  ),
];
