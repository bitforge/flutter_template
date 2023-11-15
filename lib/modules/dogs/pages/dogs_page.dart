import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/dogs/providers/dogs_provider.dart';

class DogsPage extends ConsumerWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dogImages = ref.watch(dogImagesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Shibes are the best!')),
      body: dogImages.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => ErrorWidget(err),
        data: (images) {
          // Return a SliverGrid with card of images
          return RefreshIndicator(
            onRefresh: () => ref.refresh(dogImagesProvider.future),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final image = images[index];
                        return Card(
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: images.length,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
