import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function(String selected) onAnswerSelected;

  Answer(this.text, this.onAnswerSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: () {
          onAnswerSelected(text);
        },
      ),
    );
  }
}
