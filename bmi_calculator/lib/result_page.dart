import 'package:flutter/material.dart';
import 'package:bmicalculator/const_style.dart';
import 'package:bmicalculator/reusable_widget.dart';

class ResultPage extends StatelessWidget {
  final String bmiResultText;
  final String bmiResultNumber;
  final String bmiInterpretation;

  ResultPage({@required this.bmiResultText, @required this.bmiResultNumber, @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
              child: CardContainer(
                cardColor: kLightPurple,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmiResultText,
                      style: kHeadingTextStyle,
                    ),
                    Text(
                      bmiResultNumber,
                      style: kLargeNumberTextStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
