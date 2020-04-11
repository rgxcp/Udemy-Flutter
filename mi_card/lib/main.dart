import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.red[100],
                backgroundImage: NetworkImage(
                    'https://avatars0.githubusercontent.com/u/53175514?s=460&v=4'),
                radius: 70.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  'Rommy Gustiawan',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Cedarville Cursive',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'FLUTTER JUNIOR DEVELOPER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                    letterSpacing: 3.0,
                    wordSpacing: 1.5,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
              ),
              Card(
                color: Colors.grey[100],
                margin: EdgeInsets.only(left: 40.0, top: 16.0, right: 40.0),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                    ),
                    title: Text(
                      '+62 858 8288 2768',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.grey[100],
                margin: EdgeInsets.only(left: 40.0, top: 16.0, right: 40.0),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                    ),
                    title: Text(
                      'rgcppp@fairportstudio.com',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
