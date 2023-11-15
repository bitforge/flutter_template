import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/modules/doge/widgets/doge_image.dart';
import 'package:share_plus/share_plus.dart';

class DogeDetailPage extends StatelessWidget {
  const DogeDetailPage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doge.detail'.tr()),
        actions: [
          IconButton(
            onPressed: () => _shareUrl(imageUrl),
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Center(
        child: DogeImage(imageUrl: imageUrl),
      ),
    );
  }

  void _shareUrl(String imageUrl) {
    Share.share(imageUrl, subject: 'doge.share_subject'.tr());
  }
}
