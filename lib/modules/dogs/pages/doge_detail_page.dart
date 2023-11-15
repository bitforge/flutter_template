import 'package:flutter/material.dart';
import 'package:flutter_template/modules/dogs/widgets/shibe_image.dart';
import 'package:share_plus/share_plus.dart';

class DogeDetailPage extends StatelessWidget {
  const DogeDetailPage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Such Doge! Much wow!'),
        actions: [
          IconButton(
            onPressed: () => _shareUrl(imageUrl),
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: Center(
        child: ShibeImage(imageUrl: imageUrl),
      ),
    );
  }

  void _shareUrl(String imageUrl) {
    Share.share(imageUrl, subject: 'Such Doge! Much wow!');
  }
}
