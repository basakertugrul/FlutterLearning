import 'package:flutter/material.dart';
//material google base'li dizaynlar içeriyor
//buraya pubspec.yamldeki depenciesdeki flutterdan dolayı ulaşabiliyoruz

class Person {
  int age;
  String name;

  Person({this.age = 20, this.name});
}

void main() {
  // runApp(MyApp());
  var p1 = Person();
  print(p1.age);
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello World'),
    );
  }
}
