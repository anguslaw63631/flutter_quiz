import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  Widget build(BuildContext context) {
    var questions = ["Q1?", "Q2?", "Q3?"];

    void answerQuestion() {
      setState(() {
        if (questionIndex == questions.length - 1) {
          questionIndex = -1;
        }
        questionIndex++;
      });

      print("Index:" + '$questionIndex');
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Hello World")),
      body: Column(children: [
        Text(questions[questionIndex]),
        ElevatedButton(
            onPressed: answerQuestion, child: const Text("Answer 1")),
        ElevatedButton(
            onPressed: answerQuestion, child: const Text("Answer 2")),
        ElevatedButton(onPressed: answerQuestion, child: const Text("Answer 3"))
      ]),
    ));
  }
}
