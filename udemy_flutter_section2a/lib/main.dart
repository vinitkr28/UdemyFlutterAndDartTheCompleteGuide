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
      'answer': ['Black', 'Red', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': ['Dog', 'Goat', 'Cow', 'Cat'],
    },
    {
      'questionText': 'What\'s your favourite bird?',
      'answer': ['Parot', 'Pegion', 'Sparow', 'Sturnidae'],
    },
    {
      'questionText': 'What\'s your favourite seasion?',
      'answer': ['Winter', 'Summer', 'Autumn', 'Spring'],
    },
    {
      'questionText': 'What\'s your favourite OTT platform?',
      'answer': ['Amazon Prime', 'Netflex', 'Hotstar', 'SonyLiv'],
    },
    {
      'questionText': 'What\'s your favourite place?',
      'answer': ['Bangalore', 'Pune', 'Mumbai', 'Chennai'],
    }
  ];

  void addQuestions() {
    questions.add({
      'questionText': 'What\'s your favourite subject?',
      'answer': ['Math', 'Science', 'History', 'GK'],
    });
  }

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _proceedAgainFromStart() {
    setState(() {
      _questionIndex = 0;
    });
  }

  Widget checkQuestionsOver() => _questionIndex == questions.length
      ? Result(_questionIndex, _proceedAgainFromStart)
      : Quiz(_answerQuestion, questions, _questionIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
          child: checkQuestionsOver(),
        ),
      ),
    );
  }
}
