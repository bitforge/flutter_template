import 'package:flutter_template/modules/home/pages/home_page.dart';
import 'package:flutter_template/modules/home/pages/individual_categories/funktionen_categories.dart';
import 'package:flutter_template/modules/home/pages/individual_categories/notfaelle_categories.dart';
import 'package:flutter_template/modules/home/pages/individual_categories/personen_categories.dart';
import 'package:flutter_template/modules/home/pages/pages/all_categories_page.dart';
import 'package:flutter_template/modules/home/pages/pages/detail_pages/funktion_detail_page.dart';
import 'package:flutter_template/modules/home/pages/pages/detail_pages/notfall_detail_page.dart';
import 'package:flutter_template/modules/home/pages/pages/detail_pages/person_detail_page.dart';
import 'package:flutter_template/modules/home/pages/pages/funktionen_pages/funktionen_oks_page.dart';
import 'package:flutter_template/modules/home/pages/pages/funktionen_pages/funktionen_rbsz_page.dart';
import 'package:flutter_template/modules/home/pages/pages/funktionen_pages/funktionen_ylm_page.dart';
import 'package:flutter_template/modules/home/pages/pages/funktionen_pages/funtionen_alle_page.dart';
import 'package:flutter_template/modules/home/pages/pages/info_page.dart';
import 'package:flutter_template/modules/home/pages/pages/notfaelle_categories/notfaelle_alle_page.dart';
import 'package:flutter_template/modules/home/pages/pages/notfaelle_categories/notfaelle_oks_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_alle_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_hoch_page.dart';
import 'package:flutter_template/modules/home/pages/pages/personen_pages/personen_rettung_page.dart';
import 'package:go_router/go_router.dart';

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
          return const FunktionenCategories(title: 'Funktionen');
        case 'notfälle & reanimation':
          return const NotfaelleCategories(title: 'Notfälle & Reanimation');
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
          return const FunktionenAllePage(title: 'Funktionen Alle');
        case 'oks':
          return const FunktionenOksPage(title: 'Funktionen OKS');
        case 'ylm':
          return const FunktionenYlmPage(title: 'Funktionen YLM');
        case 'rbsz':
          return const FunktionenRbszPage(title: 'Funktionen RBSZ');
        default:
          return const HomePage();
      }
    },
  ),
  // Subcategory routes for Personen
  GoRoute(
    path: '/category/notfaelle/:subcategory',
    builder: (context, state) {
      final subcategory = state.pathParameters['subcategory']!;
      switch (subcategory.toLowerCase()) {
        case 'alle':
          return const NotfaelleAllePage(title: 'Notfälle Alle');
        case 'oks':
          return const NotfaelleOksPage(title: 'Notfälle OKS');
        default:
          return const HomePage();
      }
    },
  ),
  // Personen Details Page
  GoRoute(
    path: '/personDetail',
    builder: (context, state) {
      final person = state.extra! as Map<String, String>;
      return PersonDetailPage(person: person);
    },
  ),
  // Funktionen Details Page
  GoRoute(
    path: '/funktionDetail',
    builder: (context, state) {
      final funktion = state.extra! as Map<String, String>;
      return FunktionDetailPage(funktion: funktion);
    },
  ),
  // Notfall Details Page
  GoRoute(
    path: '/notfallDetail',
    builder: (context, state) {
      final notfall = state.extra! as Map<String, String>;
      return NotfallDetailPage(notfall: notfall);
    },
  ),
];
