import 'package:flutter/material.dart';

import './fourthfile.dart';

import './fifthfile.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  final _questions = const [
    {
      'questionKey': 'What\'s My Football Club?',
      'answerKey': [
        {'score': 'Chelsea', 'scorekey': 0},
        {'score': 'Manchester United', 'scorekey': 5},
        {'score': 'Real Mdrid', 'scorekey': 0},
        {'score': 'Arsenal', 'scorekey': 0},
      ],
    },
    {
      'questionKey': 'Who\'s My Favourite Musician?',
      'answerKey': [
        {'score': 'Wizkid', 'scorekey': 5},
        {'score': 'Jon Bellion', 'scorekey': 0},
        {'score': 'Sola Allyson', 'scorekey': 0},
        {'score': 'Temsbaby', 'scorekey': 0},
      ],
    },
    {
      'questionKey': 'Which of My Names Do I Love Most?',
      'answerKey': [
        {'score': 'Ibrahim', 'scorekey': 0},
        {'score': 'Omobolaji', 'scorekey': 0},
        {'score': 'Olamilekan', 'scorekey': 5},
      ],
    },
    {
      'questionKey': 'Best Social Media Platform?',
      'answerKey': [
        {'score': 'Twitter', 'scorekey': 5},
        {'score': 'Instagram', 'scorekey': 0},
        {'score': 'Facebook', 'scorekey': 0},
        {'score': 'WhatsApp', 'scorekey': 0},
      ],
    },
  ];

  var _questionNumber = 0;
  var _finalscore = 0;

  void _forOnpressed(int score) {

    _finalscore += score;

    setState(() {
      _questionNumber = _questionNumber + 1;
      if (_questionNumber < _questions.length) {
        print('there\'s more question');
      } else {
        print('out of question');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'First Beejay App',
          ),
        ),
        body: _questionNumber < _questions.length
            ? Quiz(
                questions: _questions,
                questionNumber: _questionNumber,
                forOnpressed: _forOnpressed,
              )
            : Result(),
      ),
    );
  }
}
