import 'package:flutter/material.dart';
import 'package:first_app/dice_column.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 25, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceColumn(),
      ),
    );
  }
}
