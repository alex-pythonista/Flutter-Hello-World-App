import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
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
  static const _questions = [
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
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else
      print("No more questions!");

    // ignore: avoid_print
    print(_questionIndex);
    // print("Option Clicked!");
  }

  @override
  Widget build(BuildContext context) {
    // print(questions[_questionIndex]["questionText"]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
