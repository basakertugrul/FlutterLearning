import 'package:flutter/material.dart';
//material google base'li dizaynlar içeriyor
//buraya pubspec.yamldeki depenciesdeki flutterdan dolayı ulaşabiliyoruz
import './question.dart';
import './answer.dart';

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
      {
        'questionText': 'Whats\'s your favorite color?',
        'answers': ['Red', 'Blue', 'Green', 'Orange']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Snake', 'Zebra', 'Dog', 'Cat']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Halley', 'Basak', 'Ali']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
