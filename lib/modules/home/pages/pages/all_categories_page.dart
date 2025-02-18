import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/departments_future_provider.dart';
import 'package:flutter_template/modules/home/providers/emergency_contact_future_provider.dart';
import 'package:flutter_template/modules/home/providers/people_future_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:telefonapi/telefonapi.dart'; // Your API models (Person, EmergencyContact, Dept)

class AllEntriesPage extends ConsumerWidget {
  final String title;

  const AllEntriesPage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final peopleAsync = ref.watch(peopleFutureProvider);
    final emergencyContactsAsync = ref.watch(emergencyContactFutureProvider);
    final departmentsAsync = ref.watch(departmentsFutureProvider);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: peopleAsync.when(
        data: (people) => emergencyContactsAsync.when(
          data: (emergencyContacts) => departmentsAsync.when(
            data: (departments) {
              // Combine all items into one list
              final allItems = <Object>[
                ...people,
                ...emergencyContacts,
                ...departments,
              ]..sort((a, b) {
                  final aName = _getDisplayName(a).toLowerCase();
                  final bName = _getDisplayName(b).toLowerCase();
                  return aName.compareTo(bName);
                });

              return ListView.builder(
                itemCount: allItems.length,
                itemBuilder: (context, index) {
                  final item = allItems[index];
                  return _buildListItem(context, item);
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  String _getDisplayName(Object item) {
    if (item is Person) return '${item.firstName ?? ''} ${item.lastName ?? ''}';
    if (item is EmergencyContact) return item.displayName ?? '';
    if (item is Dept) return item.displayName ?? '';
    return '';
  }

  Widget _buildListItem(BuildContext context, Object item) {
    if (item is Person) {
      return ListTile(
        title: Text('${item.firstName ?? ''} ${item.lastName ?? ''}'),
        subtitle: Text(item.dept ?? ''),
        onTap: () => context.push('/personDetail', extra: item),
      );
    } else if (item is EmergencyContact) {
      return ListTile(
        title: Text(item.displayName ?? ''),
        subtitle: Text(item.phone ?? ''),
        onTap: () => context.push('/emergencyContactDetail', extra: item),
      );
    } else if (item is Dept) {
      return ListTile(
        title: Text(item.displayName ?? ''),
        subtitle: Text(item.room ?? ''),
        onTap: () => context.push('/departmentDetail', extra: item),
      );
    } else {
      return const SizedBox();
    }
  }
}
