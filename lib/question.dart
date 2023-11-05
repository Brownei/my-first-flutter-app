import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
