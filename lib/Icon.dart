import 'package:flutter/material.dart';

enum Gender { male, female, non }

class icon extends StatelessWidget {
  icon({required this.onpress, required this.iconsymbol});

  final IconData iconsymbol;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconsymbol),
      color: Colors.blueAccent,
      iconSize: 50.0,
      onPressed: onpress,
    );
  }
}
