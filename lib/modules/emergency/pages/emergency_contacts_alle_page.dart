import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/emergency_contact_future_provider.dart';
import 'package:go_router/go_router.dart';

class EmergencyAllePage extends ConsumerWidget {
  final String title;

  const EmergencyAllePage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emergencyContactsAsync = ref.watch(emergencyContactFutureProvider);
    ;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: emergencyContactsAsync.when(
        data: (emergencyContacts) => ListView.builder(
          itemCount: emergencyContacts.length,
          itemBuilder: (context, index) {
            final emergencyContact = emergencyContacts[index];
            return ListTile(
              title: Text(emergencyContact.displayName ?? ''),
              subtitle: Text(emergencyContact.phone ?? ''),
              onTap: () {
                context.push(
                  '/emergencyContactDetail',
                  extra: emergencyContact,
                );
              },
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
