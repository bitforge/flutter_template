import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/home/providers/departments_future_provider.dart';
import 'package:go_router/go_router.dart';

class DepartmentsAllePage extends ConsumerWidget {
  final String title;

  const DepartmentsAllePage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final departmentAsync = ref.watch(departmentsFutureProvider);
    ;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: departmentAsync.when(
        data: (departments) => ListView.builder(
          itemCount: departments.length,
          itemBuilder: (context, index) {
            final department = departments[index];
            return ListTile(
              title: Text(department.displayName ?? ''),
              subtitle: Text(department.room ?? ''),
              onTap: () {
                context.push(
                  '/deparmentDetail',
                  extra: department,
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
