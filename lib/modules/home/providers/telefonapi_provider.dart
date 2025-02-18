import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:telefonapi/telefonapi.dart';

final telefonapiProvider = Provider<Telefonapi>((ref) {
  final api = Telefonapi(
    basePathOverride:
        'https://phonebook--backend-693752807946.europe-west6.run.app',
  );
  // Log the final base URL to verify it
  print('Telefonapi base URL: ${api.dio.options.baseUrl}');
  return api;
});
