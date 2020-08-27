import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['dog', 'cat', 'chicken'],
      'correctAnswer': 'dog',
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      'correctAnswer': 'Rabbit',
    },
    {
      'questionText': 'What\'s your favourite shape?',
      'answers': ['one', 'two', 'three'],
      'correctAnswer': 'three',
    },
  ];

  int _questionIndex = 0;
  int _score = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  void _answerQuestion(String selected) {
    setState(() {
      if (_questions[_questionIndex]['correctAnswer'] == selected) {
        _score++;
      }

      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('the app bar'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  onAnswerSelected: _answerQuestion,
                )
              : Result(_score, _restartQuiz)),
    );
  }
}
