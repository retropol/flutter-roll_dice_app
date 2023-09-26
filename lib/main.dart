import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 160, 148),
            Color.fromARGB(255, 53, 88, 247)
          ],
        )),
        child: const Center(
          child: Text("Hello World!!"),
        ),
      ),
    ),
  ));
}
