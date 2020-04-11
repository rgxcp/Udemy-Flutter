import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

void playSound(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
}

Expanded buildKeyWidget(int noteNumber, Color noteColor) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(noteNumber);
      },
      color: noteColor,
      child: Text(
        'Note #$noteNumber',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyWidget(1, Colors.red),
              buildKeyWidget(2, Colors.orange),
              buildKeyWidget(3, Colors.yellow),
              buildKeyWidget(4, Colors.green),
              buildKeyWidget(5, Colors.teal),
              buildKeyWidget(6, Colors.blue),
              buildKeyWidget(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
