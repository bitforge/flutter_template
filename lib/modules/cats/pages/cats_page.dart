import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/cats/providers/cats_images.dart';

class CatsPage extends ConsumerWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catsImages = ref.watch(catsImagesProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('Cats')),
        body: catsImages.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => ErrorWidget(err),
          data: (images) {
            // Return a SliverGrid with card of images
            return RefreshIndicator(
              onRefresh: () => ref.refresh(catsImagesProvider.future),
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
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
                ],
              ),
            );
          },
        ));
  }
}
