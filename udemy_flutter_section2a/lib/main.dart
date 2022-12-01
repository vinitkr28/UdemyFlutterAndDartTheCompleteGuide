import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter_section2a/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Dog', 'score': 30},
        {'text': 'Goat', 'score': 18},
        {'text': 'Cow', 'score': 40},
        {'text': 'Cat', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite bird?',
      'answer': [
        {'text': 'Parot', 'score': 2},
        {'text': 'Pegion', 'score': 14},
        {'text': 'Sparow', 'score': 19},
        {'text': 'Sturnidae', 'score': 21}
      ],
    },
    {
      'questionText': 'What\'s your favourite seasion?',
      'answer': [
        {'text': 'Winter', 'score': 11},
        {'text': 'Summer', 'score': 22},
        {'text': 'Autumn', 'score': 28},
        {'text': 'Spring', 'score': 33}
      ],
    },
    {
      'questionText': 'What\'s your favourite OTT platform?',
      'answer': [
        {'text': 'Amazon Prime', 'score': 44},
        {'text': 'Netflex', 'score': 6},
        {'text': 'Hotstar', 'score': 16},
        {'text': 'SonyLiv', 'score': 17}
      ],
    },
    {
      'questionText': 'What\'s your favourite place?',
      'answer': [
        {'text': 'Bangalore', 'score': 27},
        {'text': 'Pune', 'score': 29},
        {'text': 'Mumbai', 'score': 39},
        {'text': 'Chennai', 'score': 37}
      ],
    }
  ];

  void addQuestions() {
    questions.add({
      'questionText': 'What\'s your favourite subject?',
      'answer': ['Math', 'Science', 'History', 'GK'],
    });
  }

  var _questionIndex = 0;

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    print("Score: $_totalScore");

    setState(() {
      _questionIndex++;
    });
  }

  void _proceedAgainFromStart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget checkQuestionsOver() => _questionIndex == questions.length
      ? Result(_questionIndex, _proceedAgainFromStart, _totalScore)
      : Quiz(_answerQuestion, questions, _questionIndex);

  Widget withMaterialApp() => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Center(
            child: checkQuestionsOver(),
          ),
        ),
      );

  Widget withScaffold() {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: checkQuestionsOver(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => withMaterialApp();
  // Widget build(BuildContext context) => withScaffold();
}
