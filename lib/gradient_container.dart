import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 147, 74, 98),
            Color.fromARGB(255, 86, 126, 159),
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
