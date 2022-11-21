import 'package:flutter/material.dart';

import './questions.dart';
// void main() {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloAppState();
  }
}

class _HelloAppState extends State<HelloApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    // print("Option Clicked!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite World Cup team?",
      "Who is your favorite player?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App!"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Argentina"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Brazil"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Germany"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Portugal"),
            ),
          ],
        ),
      ),
    );
  }
}
