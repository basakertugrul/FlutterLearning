import 'package:flutter/material.dart';
//material google base'li dizaynlar içeriyor
//buraya pubspec.yamldeki depenciesdeki flutterdan dolayı ulaşabiliyoruz
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
