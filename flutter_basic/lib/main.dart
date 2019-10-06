import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print('Answer Selected');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
           children: <Widget>[
             Text('The Question'),
             RaisedButton(
               child: Text('Answer 01'),
               onPressed: answerQuestion,
             ),
             RaisedButton(
               child: Text('Answer 02'),
               onPressed: answerQuestion,
             ),
            RaisedButton(
               child: Text('Answer 03'),
               onPressed: answerQuestion,
             ),
           ], 
        ),
      ),
    );
  }
}
