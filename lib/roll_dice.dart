import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
   DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();

  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      AnimatedSwitcher(
        duration: const Duration(milliseconds: 300), //  süresi
        child: Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          key: ValueKey<int>(
              currentDiceRoll), // Eğer Image widget'ının key'i değişirse animasyon çalışır
          width: 250,
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          child: const Text("Roll Dice"))
    ]);
  }
}
