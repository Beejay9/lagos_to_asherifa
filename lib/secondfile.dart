import 'dart:html';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String myQuestions;

  Question(this.myQuestions);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(11),
      child: Text ( 
        myQuestions,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
