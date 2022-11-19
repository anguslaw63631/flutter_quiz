import 'package:flutter/material.dart';

import './questionBank.dart';
import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      setState(() {
        _questionIndex++;
        _totalScore += score;
      });

      print("Index:" + '$_questionIndex');
      print("Score:" + '$_totalScore');
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Flutter Quiz")),
      body: _questionIndex < questionBank.length
          ? Quiz(questionBank, _answerQuestion, _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
