import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore == 30) {
      resultText = "You are a genius!";
    } else if (resultScore > 30 && resultScore <= 60) {
      resultText = "You are stupid";
    } else {
      resultText = "In your dreams, bitch!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
