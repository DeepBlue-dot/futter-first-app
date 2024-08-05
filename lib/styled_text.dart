import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String str;

  const StyledText(this.str, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
