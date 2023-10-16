
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart'; 
import 'package:flutter_quize_app/start_screen.dart';
import 'package:flutter_quize_app/question_screen.dart';
 
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
 
  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'].toString(),
              ), //Question
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['score']), answer['text'].toString());
          }).toList()
        ],
      ),
    ); //Column
  }
  
  Question(String string) {}
  
  Answer(dynamic Function() param0, String string) {}
}