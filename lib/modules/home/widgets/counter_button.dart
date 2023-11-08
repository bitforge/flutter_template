import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String tooltip;

  const CounterButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      tooltip: tooltip,
      icon: Icon(icon),
    );
  }
}
