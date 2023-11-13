import 'package:flutter/material.dart';
import 'package:flutter_template/theme/custom_colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  /// WebViewController
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(CustomColors.bitforgeBlack)
      ..loadRequest(Uri.parse('https://bitforge.ch'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bitforge Homepage')),
      body: WebViewWidget(controller: controller),
    );
  }
}
