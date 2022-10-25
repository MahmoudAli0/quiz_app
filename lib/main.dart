import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<Map<String, Object>> questions = [
    {
      'questionText': 'Flutter apps are written in the __ language  ',
      'answers': ['java', 'c++', {'answer':'dart','score':1}, 'c# ']
    },
    {
      'questionText': 'Flutter is used to develop applications for _ and _  ',
      'answers': ['android ', 'ios ', {'answer':'both ','score':1}, 'None ']
    },
    {
      'questionText': 'Which Company Developed Flutter? ',
      'answers': [{'answer':'google ','score':1}, 'Facebook', 'IBM', 'Microsoft  ']
    },
    {
      'questionText':
          'Which function is responsible for starting the program?  ',
      'answers': ['runApp() ', {'answer':'main()','score':1}, 'run()', 'flutter()  ']
    },
    {
      'questionText': 'SDK represents____   ',
      'answers': [
        'Software Development Knowledge ',
        'Software Data Kit ',
        {'answer':'Software Development Kit ','score':1},
        'Software Database Kit'
      ]
    },
    {
      'questionText': 'How many types of widgets are there in Flutter  ',
      'answers': ['1 ', {'answer':'2','score':1}, '3', '4']
    },
    {
      'questionText': 'What are the advantages of Flutter? ',
      'answers': [
        'Cross-platform Development ',
        'Faster Development',
        'UI Focused',
        {'answer': 'All of the above','score':1}
      ]
    },
    {
      'questionText':
          'Access and manipulate the cloud database is possible with which of the following options?  ',
      'answers': [
        {'answer':'Firebase Database',"score" :1},
        'SQFlite Database',
        'both firebase and sqlflite',
        'None of the above'
      ]
    },
  ];
  void RestartApp() {
    setState(() {
      questionIndex = 0;
    });
  }

  void AnsweQuestion(){
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          width: double.infinity,
          child: questionIndex < questions.length
              ? Quiz(questions, questionIndex, AnsweQuestion)
              : Result(RestartApp),
        ),
      ),
    );
  }
}
