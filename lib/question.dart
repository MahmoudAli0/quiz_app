import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String QuesText;
  Question(this.QuesText);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        child: Text(
          QuesText,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ));
  }
}
