import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneColorBox extends ConsumerWidget {
  final Color color;
  final String text;
  final Function()? onTap;
  final int itemCount;

  const PhoneColorBox({
    required this.color,
    required this.text,
    required this.itemCount,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    final availableHeight = screenHeight -
        kToolbarHeight -
        kBottomNavigationBarHeight -
        padding.top -
        padding.bottom -
        (Platform.isAndroid ? 128 : 32);

    final textScaler = MediaQuery.of(context).textScaler;

    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minHeight: textScaler.scale(90),
          maxHeight: max(textScaler.scale(90), availableHeight / itemCount),
        ),
        color: color,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: theme.textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onInverseSurface,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
