import 'package:flutter/material.dart';
//material google base'li dizaynlar içeriyor
//buraya pubspec.yamldeki depenciesdeki flutterdan dolayı ulaşabiliyoruz

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
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
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
