import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  //final ekledik çünkü bu data değişmeyecek demek istedik ki statelesswidget sorun olmasın
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
