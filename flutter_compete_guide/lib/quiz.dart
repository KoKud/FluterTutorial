import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),

      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), (answer['text'] as String));
      }).toList()

      // for (String answer in questions[questionIndex]['answers'])
      //   Answer(answerQuestion, answer),

      // ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion),
      // RaisedButton(
      //     onPressed: answerQuestion, child: Text('ElevatedButton')),
    ]);
  }
}
