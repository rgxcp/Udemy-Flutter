/*
return MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.red[300],
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        // verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Container(
            color: Colors.red[100],
            height: 100.0,
            child: Text('Container 1'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.green[100],
            height: 100.0,
            child: Text('Container 2'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.blue[100],
            height: 100.0,
            child: Text('Container 3'),
          ),
          Container(
            width: double.infinity,
          ),
        ],
      ),
    ),
  ),
);
 */

/*
return MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.teal,
    body: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100.0,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.green,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100.0,
          ),
        ],
      ),
    ),
  ),
);
 */
