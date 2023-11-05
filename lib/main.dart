import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List _questions = [
    {
      'questionText': 'What\'s the capital of France?',
      'answers': [
        {'text': 'Paris', 'answer': 'correct'},
        {'text': 'London', 'answer': 'wrong'},
        {'text': 'Berlin', 'answer': 'wrong'},
        {'text': 'Madrid', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'Which planet is known as the Red Planet?',
      'answers': [
        {'text': 'Earth', 'answer': 'wrong'},
        {'text': 'Mars', 'answer': 'correct'},
        {'text': 'Jupiter', 'answer': 'wrong'},
        {'text': 'Venus', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'Who painted the Mona Lisa?',
      'answers': [
        {'text': 'Vincent van Gogh', 'answer': 'wrong'},
        {'text': 'Pablo Picasso', 'answer': 'wrong'},
        {'text': 'Leonardo da Vinci', 'answer': 'correct'},
        {'text': 'Michelangelo', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'What is the largest mammal in the world?',
      'answers': [
        {'text': 'Elephant', 'answer': 'wrong'},
        {'text': 'Blue Whale', 'answer': 'correct'},
        {'text': 'Giraffe', 'answer': 'wrong'},
        {'text': 'Hippopotamus', 'answer': 'wrong'}
      ]
    },
    {
      'questionText':
          'Which element does \'H\' represent on the periodic table?',
      'answers': [
        {'text': 'Helium', 'answer': 'wrong'},
        {'text': 'Hydrogen', 'answer': 'correct'},
        {'text': 'Carbon', 'answer': 'wrong'},
        {'text': 'Oxygen', 'answer': 'wrong'}
      ]
    },
    {
      'questionText':
          'In which year did Christopher Columbus discover America?',
      'answers': [
        {'text': '1492', 'answer': 'correct'},
        {'text': '1588', 'answer': 'wrong'},
        {'text': '1620', 'answer': 'wrong'},
        {'text': '1776', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'What is the tallest mountain in the world?',
      'answers': [
        {'text': 'Mount Kilimanjaro', 'answer': 'wrong'},
        {'text': 'Mount Everest', 'answer': 'correct'},
        {'text': 'K2', 'answer': 'wrong'},
        {'text': 'Mount Fuji', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'Who wrote the play "Romeo and Juliet"?',
      'answers': [
        {'text': 'William Shakespeare', 'answer': 'correct'},
        {'text': 'Jane Austen', 'answer': 'wrong'},
        {'text': 'Charles Dickens', 'answer': 'wrong'},
        {'text': 'F. Scott Fitzgerald', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'What is the chemical symbol for gold?',
      'answers': [
        {'text': 'Ag', 'answer': 'wrong'},
        {'text': 'Au', 'answer': 'correct'},
        {'text': 'Fe', 'answer': 'wrong'},
        {'text': 'Pt', 'answer': 'wrong'}
      ]
    },
    {
      'questionText': 'Who painted the ceiling of the Sistine Chapel?',
      'answers': [
        {'text': 'Leonardo da Vinci', 'answer': 'wrong'},
        {'text': 'Michelangelo', 'answer': 'correct'},
        {'text': 'Raphael', 'answer': 'wrong'},
        {'text': 'Vincent van Gogh', 'answer': 'wrong'}
      ]
    }
  ];

  void _reset() {
    if (_questionIndex >= _questions.length) {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }
  }

  void _answerQuestion(String answer) {
    if (answer == 'correct') {
      _totalScore += 1;
    }

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questionIndex, _questions)
              : Result(_totalScore, _questions, _reset)),
    );
  }
}
