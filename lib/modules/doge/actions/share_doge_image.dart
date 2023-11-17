import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareDogeImage(String imageUrl) async {
  final imageFile = await DefaultCacheManager().getSingleFile(imageUrl);
  await Share.shareXFiles([XFile(imageFile.path)], subject: 'doge.share_subject'.tr());
}
