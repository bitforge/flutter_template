import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Global package info
/// Initialized asynchronously in main.dart
/// Values below are null object fallbacks
PackageInfo platformPackageInfo = PackageInfo(
  appName: 'null',
  packageName: 'null',
  version: '0',
  buildNumber: '0',
);

final packageInfoProvider = Provider<PackageInfo>((ref) {
  return platformPackageInfo;
});
