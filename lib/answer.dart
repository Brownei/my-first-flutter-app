import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback clickHandler;
  final String answerText;
  const Answer(this.clickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: clickHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white60
        ),
        child: Text(answerText),
      ),
    );
  }
}
