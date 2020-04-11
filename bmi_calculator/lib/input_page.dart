import 'package:flutter/material.dart';
import 'package:bmicalculator/bmi_calculator_brain.dart';
import 'package:bmicalculator/const_style.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:bmicalculator/reusable_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int userHeight = 150;
  int userWeight = 60;
  int userAge = 18;

  /*
  Color maleCardColor = darkPurple;
  Color femaleCardColor = darkPurple;

  void updateCardColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == darkPurple) {
        maleCardColor = lightPurple;
        femaleCardColor = darkPurple;
      } else {
        maleCardColor = darkPurple;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColor == darkPurple) {
        femaleCardColor = lightPurple;
        maleCardColor = darkPurple;
      } else {
        femaleCardColor = darkPurple;
      }
    }
  }
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: CardContainer(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male ? kLightPurple : kDarkPurple,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: CardContainer(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female ? kLightPurple : kDarkPurple,
                    cardChild: IconContainer(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: CardContainer(
                cardColor: kLightPurple,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          userHeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      onChanged: (double newUserHeight) {
                        setState(() {
                          userHeight = newUserHeight.round();
                        });
                      },
                      value: userHeight.toDouble(),
                      min: 0.0,
                      max: 200.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: CardContainer(
                    cardColor: kLightPurple,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          userWeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              buttonOnPressed: () {
                                setState(() {
                                  userWeight--;
                                });
                              },
                              buttonIcon: Icons.remove,
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            RoundIconButton(
                              buttonOnPressed: () {
                                setState(() {
                                  userWeight++;
                                });
                              },
                              buttonIcon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: CardContainer(
                    cardColor: kLightPurple,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          userAge.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              buttonOnPressed: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                              buttonIcon: Icons.remove,
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            RoundIconButton(
                              buttonOnPressed: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                              buttonIcon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
              ],
            ),
          ),
          BottomButton(
            onPressed: () {
              BMICalculatorBrain calc = BMICalculatorBrain(height: userHeight, weight: userWeight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResultNumber: calc.calculateBMI(),
                    bmiResultText: calc.getBMI(),
                    bmiInterpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
