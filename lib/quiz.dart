import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionBank;
  final Function(int) _answerQuestion;
  final int _questionIndex;
  Quiz(this.questionBank, this._answerQuestion, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionBank[_questionIndex]['questionText'].toString()),
      for (var answer in (questionBank[_questionIndex]['answers']
          as List<Map<String, Object>>))
        Answer(() => _answerQuestion(answer['score'] as int),
            answer['text'] as String),
    ]);
  }
}
