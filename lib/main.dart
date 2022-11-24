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
  var _totalScore = 0;
  static const _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {
          "text": "Cyan",
          "score": 10,
        },
        {
          "text": "Yellow",
          "score": 30,
        },
        {
          "text": "Black",
          "score": 20,
        },
      ],
    },
    {
      "questionText": "Who is your favorite footballer?",
      "answers": [
        {
          "text": "Messi",
          "score": 10,
        },
        {
          "text": "Neymar",
          "score": 30,
        },
        {
          "text": "Ronaldo",
          "score": 20,
        },
      ]
    },
    {
      "questionText": "Who do you think win this worldcup?",
      "answers": [
        {
          "text": "Argentina",
          "score": 10,
        },
        {
          "text": "Brazil",
          "score": 30,
        },
        {
          "text": "Germany",
          "score": 20,
        },
      ]
    }
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          title: const Center(child: Text("Stupid Quiz App!")),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
