import 'package:flutter/material.dart';
import 'Result.dart';
import 'Constant.dart';

class bmiButton extends StatelessWidget {
  bmiButton(this.buttontext, this.page);

  late String buttontext;
  VoidCallback page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: page,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: kbottomColor,
          height: kbottomContainer,
          width: double.infinity,
          child: Center(
            child: Text(
              buttontext,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
