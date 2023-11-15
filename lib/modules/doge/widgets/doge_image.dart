import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DogeImage extends StatelessWidget {
  const DogeImage({
    required this.imageUrl,
    super.key,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageUrl,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 200),
        placeholder: (context, url) => ColoredBox(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}
