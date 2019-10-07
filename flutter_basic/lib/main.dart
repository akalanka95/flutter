import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; 

  void _answerQuestion(){
    setState((){
       _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite sport?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
           children: <Widget>[
             Question(questions[_questionIndex]),
             RaisedButton(
               child: Text('Answer 01'),
               onPressed: _answerQuestion,
             ),
             RaisedButton(
               child: Text('Answer 02'),
               onPressed: _answerQuestion,
             ),
            RaisedButton(
               child: Text('Answer 03'),
               onPressed: _answerQuestion,
             ),
           ], 
        ),
      ),
    );
  }
}
