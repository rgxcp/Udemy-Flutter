import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text('I Am Rich'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/tesla.jpg'),
            ),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
      ),
    );
