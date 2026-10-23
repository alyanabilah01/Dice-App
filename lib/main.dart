import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 147, 74, 98),
                Color.fromARGB(255, 86, 126, 159),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Image",
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Roll the dice",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
