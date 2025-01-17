import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF0000F5)),
        ),
        onPressed: () {},
        label: const Text(
          'SMS',
          style: TextStyle(color: Color(0xFF0000F5)),
        ),
        icon: const Icon(
          Icons.sms,
          color: Color(0xFF0000F5),
        ));
  }
}
