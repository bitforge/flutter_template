import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final Color? color;
  final IconData? icon;
  final VoidCallback onTap;

  const CategoryTile({
    required this.title,
    required this.color,
    required this.onTap,
    super.key,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) Icon(icon, color: Colors.white),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
