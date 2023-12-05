import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class HelloTextStyles extends StatelessWidget {
  const HelloTextStyles(this.text, {super.key});

  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
        ));
  }
}
