import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List _questions;
  final int _questionIndex;
  final Function _answerQuestion;

  const Quiz(this._answerQuestion, this._questionIndex, this._questions);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questions[_questionIndex]['questionText'] as String),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _answerQuestion(answer['answer'] as String), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
