import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Future<void> Function()? onRefresh;

  const CustomAppBar({required this.title, super.key, this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      shadowColor: Colors.black,
      title: Text(title),
      actions: [
        if (onRefresh != null)
          IconButton(
            onPressed: () async {
              if (onRefresh != null) {
                await onRefresh!();
              }
            },
            icon: const Icon(Icons.refresh),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
