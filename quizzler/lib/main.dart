import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question_brain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Quizzler(),
          ),
        ),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  // Object
  QuestionBrain questionBrain = QuestionBrain();

  // List of Icon
  List<Icon> scoreList = [];

  // Method to Check User Answer
  void checkAnswer(bool answer) {
    setState(() {
      if (questionBrain.isFinished() == true) {
        // Showing Notification
        Alert(
            context: context,
            title: 'Selesai!',
            desc: 'Anda telah menyelesaikan seluruh quiz ini.',
            buttons: [
              DialogButton(
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                width: 120.0,
              ),
            ]).show();

        // Reset Question from Start
        questionBrain.resetQuestion();

        // Remove All List of Icon
        scoreList = [];
      } else {
        // Add Right or Wrong Icon
        if (questionBrain.getQuestionAnswer() == answer) {
          scoreList.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreList.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        // Increase Question Number by One
        questionBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              questionBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(true);
              },
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: () {
                checkAnswer(false);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            children: scoreList,
          ),
        ),
      ],
    );
  }
}
