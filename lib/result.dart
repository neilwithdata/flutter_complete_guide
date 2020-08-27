import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback onReset;
  final int score;

  Result(this.score, this.onReset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You got $score right',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text('Try again'),
            onPressed: () => onReset(),
          )
        ],
      ),
    );
  }
}
