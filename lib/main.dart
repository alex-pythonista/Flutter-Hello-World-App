import 'package:flutter/material.dart';

// void main() {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite sports?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meghar mon kharap!"),
        ),
        body: Column(
          children: [
            Text("The question!"),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
          ],
        ),
      ),
    );
  }
}
