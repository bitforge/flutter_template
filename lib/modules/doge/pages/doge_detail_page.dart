import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/modules/doge/actions/share_doge_image.dart';
import 'package:flutter_template/modules/doge/widgets/doge_image.dart';

class DogeDetailPage extends StatefulWidget {
  const DogeDetailPage({required this.imageUrl, super.key});

  final String imageUrl;

  @override
  State<DogeDetailPage> createState() => _DogeDetailPageState();
}

class _DogeDetailPageState extends State<DogeDetailPage> {
  final TransformationController _transformationController =
      TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('doge.detail'.tr()),
        actions: [
          IconButton(
            onPressed: () => shareDogeImage(widget.imageUrl),
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: InteractiveViewer(
        transformationController: _transformationController,
        child: GestureDetector(
          onDoubleTap: () =>
              _transformationController.value = Matrix4.identity(),
          child: Center(
            child: DogeImage(imageUrl: widget.imageUrl),
          ),
        ),
      ),
    );
  }
}
