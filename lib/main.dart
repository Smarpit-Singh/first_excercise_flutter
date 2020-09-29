import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title
        title: "Simple Material App",
        // Home
        home: Scaffold(
          // Appbar
          appBar: AppBar(
            // Title
            title: Text("Simple Material App"),
          ),
          // Body
          body: Container(
            // Center the content
            child: Center(
              // Add Text
              child: RaisedButton(
                child: Text(
                    'Hiiii'
                ),
                onPressed: buttonPressed,
              ),
            ),
          ),
        ));
  }

  void buttonPressed() {
    print('called');
  }
}