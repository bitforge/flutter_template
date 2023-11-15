import 'package:flutter/material.dart';
import 'package:flutter_template/modules/dogs/widgets/shibe_image.dart';

class DogeDetailPage extends StatelessWidget {
  const DogeDetailPage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Such Doge! Much wow!'),
      ),
      body: Center(
        child: ShibeImage(imageUrl: imageUrl),
      ),
    );
  }
}
