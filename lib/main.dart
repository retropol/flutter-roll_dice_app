import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: GradientContainer([
      Color.fromARGB(255, 255, 160, 148),
      Color.fromARGB(255, 53, 88, 247),
    ])),
  ));
}
