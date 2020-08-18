import 'package:flutter/material.dart';
//material google base'li dizaynlar içeriyor
//buraya pubspec.yamldeki depenciesdeki flutterdan dolayı ulaşabiliyoruz

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text("The question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer 1 choosen"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 choosen"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Answer 3 choosen"),
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: () => print("Answer 4 choosen"),
            ),
          ],
        ),
      ),
    );
  }
}
