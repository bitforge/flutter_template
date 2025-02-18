import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/people_future_provider.dart';
import 'package:go_router/go_router.dart';

class PersonenHochPage extends ConsumerWidget {
  final String title;

  const PersonenHochPage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final peopleAsync = ref.watch(peopleFutureProvider);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: peopleAsync.when(
        data: (people) => ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return ListTile(
              title: Text('${person.firstName ?? ''} ${person.lastName ?? ''}'),
              subtitle: Text(person.dept ?? ''),
              onTap: () {
                context.push('/personDetail', extra: person);
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
