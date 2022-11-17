import 'package:flutter/material.dart';

// void main() {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meghar mon kharap!"),
        ),
        body: Text("মেঘা এখনো তাক্কুকে মিস করে"),
      ),
    );
  }
}
