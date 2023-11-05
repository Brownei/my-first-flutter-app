import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final List _questions;
  final VoidCallback reset;

  const Result(this._totalScore, this._questions, this.reset);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: _totalScore > 6 ? Text(
              'You got $_totalScore out of ${_questions.length}! Sharp!!',
              textAlign: TextAlign.center,
              selectionColor: Colors.black,
            ) : Text(
              'You got only $_totalScore out of ${_questions.length}? You dumb?',
              textAlign: TextAlign.center,
              selectionColor: Colors.black,
            )
          ),

          ElevatedButton(onPressed: reset, child: const Text('Restart Questions?'),)
        ],
      ),
    );
  }
}
