import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';
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

    // ignore: avoid_print
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
          title: const Text("Quiz App!"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
