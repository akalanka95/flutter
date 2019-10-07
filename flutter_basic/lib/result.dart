import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 30) {
      resultText = 'You are Good';
    } else {
      resultText = 'You are Awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            FlatButton(
              child: Text('Restart Quiz'),
              textColor: Colors.blue,
              onPressed: resetHandler,
            )
          ],
        ),
        margin: EdgeInsets.only(top: 160),
      ),
    );
  }
}
