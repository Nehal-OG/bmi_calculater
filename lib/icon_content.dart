import 'package:flutter/material.dart';
import 'Constant.dart';

class CardSelection extends StatelessWidget {
  CardSelection(this.gender, this.genderIcon);

  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: ktextstylelable,
        )
      ],
    );
  }
}
