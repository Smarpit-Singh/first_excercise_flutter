import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {      // 1st
  @override
  MyStateFullWidget createState() => MyStateFullWidget();   // 2nd
}

class MyStateFullWidget extends State<MyApp> {   // 3rd

  int _counter = 0;
  List<String> _lis = ['Flutter', 'Is', "Cool", "and Awesome"];
  String _displayedString = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Example'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              _displayedString,
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              textColor: Colors.black,
              child: Text('Click Here'),
              onPressed: buttonPressed,
            )
          ],
        ),
      ),
    );
  }

  void buttonPressed() {
    setState(() {
      _counter = _counter < 4 ? _counter + 1 : 0;
      _displayedString = _lis[_counter];
    });
  }
}
