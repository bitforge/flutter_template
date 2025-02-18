import 'dart:io';

import 'package:flutter/material.dart';

class PhoneColorColumn extends StatelessWidget {
  final List<Widget> children;

  const PhoneColorColumn({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    final availableHeight = screenHeight -
        kToolbarHeight -
        kBottomNavigationBarHeight -
        padding.top -
        padding.bottom -
        (Platform.isAndroid ? 128 : 32);

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: availableHeight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
