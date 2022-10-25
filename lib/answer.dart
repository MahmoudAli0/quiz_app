import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String qAnswer;
  final Function() btnPressed;

  const Answer(this.qAnswer, this.btnPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: btnPressed,
        child: Text(
          qAnswer,
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}
