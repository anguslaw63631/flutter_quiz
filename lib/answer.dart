import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.cyan),
        ),
        child: Text(answerText),
      ),
    );
  }
}
