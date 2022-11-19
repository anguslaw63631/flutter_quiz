import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizHandler;
  Result(this.resultScore, this.resetQuizHandler);

  String resultString() {
    var baseString;
    if (resultScore <= 8) {
      baseString = 'Done! Score:' + '$resultScore';
    } else if (resultScore <= 12) {
      baseString = 'Good! Score:' + '$resultScore';
    } else {
      baseString = 'Welldone! Score:' + '$resultScore';
    }
    return baseString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultString(),
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuizHandler,
            child: const Text('Try agina'),
          )
        ],
      ),
    );
  }
}
