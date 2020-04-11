import 'package:flutter/material.dart';
import 'package:bmicalculator/const_style.dart';

enum Gender {
  male,
  female,
}

class CardContainer extends StatelessWidget {
  final Color cardColor;
  final Function onPressed;
  final Widget cardChild;

  CardContainer({this.onPressed, @required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: cardChild,
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContainer({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData buttonIcon;
  final Function buttonOnPressed;

  RoundIconButton({@required this.buttonOnPressed, @required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonOnPressed,
      fillColor: kLightGray,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      child: Icon(buttonIcon),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onPressed;
  final String buttonTitle;

  BottomButton({@required this.onPressed, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightPink,
      width: double.infinity,
      height: 70.0,
      margin: EdgeInsets.only(top: 16.0),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
