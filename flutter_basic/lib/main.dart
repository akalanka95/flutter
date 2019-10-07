import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Green', 'score': 10},
        {'text': 'Black', 'score': 8},
        {'text': 'Red', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favourite sport?',
      'answers': [
        {'text': 'Cricket', 'score': 20},
        {'text': 'FootBall', 'score': 10},
        {'text': 'Rugby', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 40},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Snake', 'score': 20},
        {'text': 'Lion', 'score': 10}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
