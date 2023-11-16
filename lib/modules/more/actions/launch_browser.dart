import 'package:url_launcher/url_launcher.dart';

void launchBrowser(String url) {
  final uri = Uri.parse(url);
  // 💡: Try other launch modes
  launchUrl(uri, mode: LaunchMode.inAppWebView);
}
