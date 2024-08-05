import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

class DiceColumn extends StatefulWidget {
  const DiceColumn({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceColumn();
  }
}

class _DiceColumn extends State<StatefulWidget> {
  int dice = 1;

  void rollDice() {
    setState(() {
      dice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/dice-images/dice-$dice.png",
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple, // Button background color
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
          ),
          child: const StyledText("Roll dice"),
        ),
      ],
    );
  }
}
