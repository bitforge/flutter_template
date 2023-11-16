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
    final theme = Theme.of(context);
    return Ink(
      width: 40,
      height: 40,
      decoration: ShapeDecoration(
        color: theme.colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        color: theme.colorScheme.surface,
        icon: Icon(icon),
      ),
    );
  }
}
