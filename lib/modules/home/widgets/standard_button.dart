import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;

  const StandardButton({required this.buttonText, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 40),
        elevation: 2,
        shape: const RoundedRectangleBorder(),
      ),
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
