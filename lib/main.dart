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
    const questions = [
      {
        "questionText": "What is your favorite color?",
        "answers": ["Cyan", "Crimson Red", "Magenta", "Purple"],
      },
      {
        "questionText": "Who is your favorite footballer?",
        "answers": ["Neymar Jr", "Ronaldo", "Messi", "MBappe"],
      },
      {
        "questionText": "Who do you think win this worldcup?",
        "answers": ["Argentina", "Brazil", "Germany", "Ghana"]
      }
    ];
    print(questions[_questionIndex]["questionText"]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App!"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"] as String),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
