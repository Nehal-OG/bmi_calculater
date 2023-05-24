import 'package:bmi_calculater/BMI_Button.dart';
import 'package:bmi_calculater/Result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'Reuseable_card.dart';
import 'Constant.dart';
import 'Icon.dart';
import 'BMI_Button.dart';

enum Gender { male, female, non }

class InputPages extends StatefulWidget {
  @override
  State<InputPages> createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  Gender selectgender = Gender.non;
  int height = 180;
  int weight = 60;
  int age = 20;

  // Color maleCardColor = maleInactiveCardColor;
  // Color femaleCardColor = femaleInactiveCardColor;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     femaleCardColor = femaleInactiveCardColor;
  //     maleCardColor = cardColor;
  //   } else if (gender == Gender.female) {
  //     femaleCardColor = cardColor;
  //     maleCardColor = maleInactiveCardColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Calculater"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  onpress: () {
                    setState(() {
                      selectgender = Gender.male;
                    });
                  },
                  colour: selectgender == Gender.male
                      ? kcardColor
                      : kinactiveCardColor,
                  cardChild: CardSelection("Male", FontAwesomeIcons.mars),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onpress: () {
                    setState(() {
                      selectgender = Gender.female;
                    });
                  },
                  colour: selectgender == Gender.female
                      ? kcardColor
                      : kinactiveCardColor,
                  cardChild: CardSelection("Female", FontAwesomeIcons.venus),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReuseableCard(
              onpress: () {},
              colour: kcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: ktextstylelable,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: Ktextsytlenumber,
                      ),
                      const Text(
                        "CM",
                        style: ktextstylelable,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.deepPurple,
                      thumbColor: Colors.white,
                      overlayColor: Colors.tealAccent,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 360,
                      thumbColor: Colors.blueGrey,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReuseableCard(
                  onpress: () {},
                  colour: kcardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: ktextstylelable,
                      ),
                      Text(
                        weight.toString(),
                        style: Ktextsytlenumber,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icon(
                            iconsymbol: Icons.remove_circle,
                            onpress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          icon(
                            onpress: () {
                              setState(() {
                                weight++;
                              });
                            },
                            iconsymbol: Icons.add_circle_rounded,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onpress: () {},
                  colour: kcardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE",
                        style: ktextstylelable,
                      ),
                      Text(
                        age.toString(),
                        style: Ktextsytlenumber,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icon(
                            onpress: () {
                              setState(() {
                                age--;
                              });
                            },
                            iconsymbol: Icons.remove_circle,
                          ),
                          icon(
                            onpress: () {
                              setState(
                                () {
                                  age++;
                                },
                              );
                            },
                            iconsymbol: Icons.add_circle_rounded,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bmiButton(
            "CALCULATE",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
