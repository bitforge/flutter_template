import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DogeDetailPage extends StatelessWidget {
  const DogeDetailPage({required this.imgUrl, super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Such Doge! Much wow!'),
      ),
      body: Center(
        child: Hero(
          tag: imgUrl,
          child: CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.contain,
            fadeInDuration: const Duration(milliseconds: 200),
            placeholder: (context, url) => ColoredBox(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ),
      ),
    );
  }
}
