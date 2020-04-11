import 'package:flutter/material.dart';
import 'package:bmicalculator/const_style.dart';
import 'package:bmicalculator/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: SliderThemeData(
          activeTrackColor: kWhite,
          inactiveTrackColor: kDarkGray,
          thumbColor: kLightPink,
          overlayColor: kTransparentPink,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
        ),
      ),
    );
  }
}
