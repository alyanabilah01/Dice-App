import 'package:flutter/material.dart';
import 'dart:math';

// Steps for creating a stateful widget:
// 1. Create a main class that extends StatefulWidget
// 2. Create another state class that extends State<YourWidgetClass> and create a constructor 
// 3. Create a createState function in the main class that returns an instance of the state class
// 4. create a build function in the state class that returns a widget tree
// 5. Use setState function to update and rebuild the UI

// Stateful widget has 2 classes: the widget class and the state class.
//The widget class is immutable and can be recreated, while the state class holds the mutable state for the widget.
// Both classes must be defined in the same file, and the state class is typically private to the widget class.
class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// The state class for the DiceRoller widget
// "_"  indicates that this class is private to the file. It cannot be accessed from other files.
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random(); // Create a random number generator
  var currentDiceRoll = 5; // Variable to hold the current dice roll value


  // Function to roll the dice and update the currentDiceRoll variable
  void rollDice() {
    // setState tells Flutter that the state of the widget has changed and it needs to rebuild the UI
    // it calls build function again to reflect the changes in the UI
    setState(() {});
    currentDiceRoll =
        randomizer.nextInt(6) + 1; // Generates a random number between 1 and 6
    print(
      'Dice rolled: $currentDiceRoll',
    ); // Print the current dice roll to the console
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Replace with the appropriate image based on currentDiceRoll
        Image.asset('assets/dice-$currentDiceRoll.png', width: 200),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll the dice",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
