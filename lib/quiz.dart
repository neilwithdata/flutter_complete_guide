import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final void Function(String selected) onAnswerSelected;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(answer, onAnswerSelected))
            .toList(),
      ],
    );
  }
}
