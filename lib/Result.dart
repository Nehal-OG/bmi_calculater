import 'package:bmi_calculater/BMI_Button.dart';
import 'package:flutter/material.dart';
import 'Reuseable_card.dart';
import 'Constant.dart';
import 'input_page.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculater"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "YOUR RESULT",
                style: KResultTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              onpress: () {},
              colour: kcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                  ),
                  Text(
                    "25",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "BMI result   ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  bmiButton(
                    "RE-CALCULATE",
                    () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
