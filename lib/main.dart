import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: GradientContainer(const [
      Color.fromARGB(255, 255, 160, 148),
      Color.fromARGB(255, 53, 88, 247),
    ])),
  ));
}
