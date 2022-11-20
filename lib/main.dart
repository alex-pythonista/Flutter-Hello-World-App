import 'package:flutter/material.dart';

// void main() {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelloAppState();
  }
}

class HelloAppState extends State<HelloApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Argentina"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Brazil"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Germany"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Portugal"),
            ),
          ],
        ),
      ),
    );
  }
}
