import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyEditText());
}

class MyEditText extends StatefulWidget {  // 1st

  @override
  MyEditTextState createState() => MyEditTextState();  // 2nd
}

class MyEditTextState extends State<MyEditText> {  // 3rd

  String results = "";

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using EditText"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Enter text here..."),
                onSubmitted: (String str) {
                  setState(() {
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {

    controller.dispose();
    super.dispose();
  }
}