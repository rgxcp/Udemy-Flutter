import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: DiceeBody(),
      ),
    );
  }
}

class DiceeBody extends StatefulWidget {
  @override
  _DiceeBodyState createState() => _DiceeBodyState();
}

class _DiceeBodyState extends State<DiceeBody> {
  int leftDice = 1;
  int rightDice = 1;

  void randomizeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomizeDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomizeDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
