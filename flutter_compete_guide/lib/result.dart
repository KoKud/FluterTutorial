import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function reserHandler;
  Result(this._totalScore, this.reserHandler);

  String get resultPhrase {
    String resultText;
    if (_totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (_totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reserHandler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
