import 'package:flutter/material.dart';

import './secondfile.dart';

import './thirdfile.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionNumber;
  final VoidCallback forOnpressed;

  Quiz({
    required this.questions,
    required this.questionNumber,
    required this.forOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionNumber]['questionKey'] as String,
        ),
        ...(questions[questionNumber]['answerKey'] as List<Map<String, Object>>)
            .map((question) {
          return Answer(() => forOnpressed, question['score'] as String);
        }).toList()
      ],
    );
  }
}
