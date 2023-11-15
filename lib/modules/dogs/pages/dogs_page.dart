import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/dogs/providers/dogs_provider.dart';
import 'package:go_router/go_router.dart';

class DogsPage extends ConsumerWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dogImages = ref.watch(shibeImagesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Shibes are the best!')),
      body: dogImages.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => ErrorWidget(err),
        data: (images) {
          // Return a SliverGrid with card of images
          return RefreshIndicator(
            onRefresh: () => ref.refresh(shibeImagesProvider.future),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final image = images[index];
                        return GestureDetector(
                          onTap: () => context.push('/dogs/detail/${Uri.encodeComponent(image)}'),
                          child: Hero(
                            tag: image,
                            child: CachedNetworkImage(
                              imageUrl: image,
                              fit: BoxFit.cover,
                              fadeInDuration: const Duration(milliseconds: 200),
                              placeholder: (context, url) => ColoredBox(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ),
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
