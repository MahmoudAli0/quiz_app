import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() AnsweQuestion;
  final int score=0 ;

  const Quiz(this.questions, this.questionIndex, this.AnsweQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questions[questionIndex]["questionText".toString()].toString()),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answer, AnsweQuestion);
        }).toList(),
      ],
    );
  }
}
