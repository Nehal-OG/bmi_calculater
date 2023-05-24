import 'package:flutter/material.dart';

enum Gender { male, female, non }

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {required this.onpress, required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: 210,
          child: cardChild,
        ),
      ),
    );
  }
}
