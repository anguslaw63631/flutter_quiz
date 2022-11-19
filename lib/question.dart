import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Text(
          question,
          style: const TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ));
  }
}
