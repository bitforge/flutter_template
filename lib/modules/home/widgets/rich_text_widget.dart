import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final String? value;
  final Widget? action;

  const RichTextWidget(
      {required this.title, this.value, super.key, this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$title\n',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(221, 54, 54, 54),
                ),
              ),
              TextSpan(
                text: value ?? 'N/A',
                style: const TextStyle(color: Color.fromARGB(221, 54, 54, 54)),
              ),
            ],
          ),
        ),
        if (action != null) action!,
      ],
    );
  }
}
