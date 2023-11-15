import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/modules/doge/providers/doge_images_provider.dart';
import 'package:flutter_template/modules/doge/widgets/doge_image.dart';
import 'package:go_router/go_router.dart';

class DogePage extends ConsumerWidget {
  const DogePage({super.key});

  /// Number of doge images shown
  static const imageCount = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shibeImages = ref.watch(dogeImagesProvider(imageCount));

    return Scaffold(
      appBar: AppBar(title: const Text('Shibes are the best!')),
      body: shibeImages.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => ErrorWidget(err),
        data: (images) {
          // Return a SliverGrid with card of images
          return RefreshIndicator(
            onRefresh: () => ref.refresh(dogeImagesProvider(imageCount).future),
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
                        final imageUrl = images[index];
                        return GestureDetector(
                          onTap: () => context.push('/doge/detail/${Uri.encodeComponent(imageUrl)}'),
                          child: DogeImage(imageUrl: imageUrl),
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
