import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

// import 'package:udemy_flutter_section2a/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final -> run time constant
  // const -> compile time constant

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

/*
  var dummy = const ['Hello'];
  dummy.add('Max');
  print(dummy);
  does not work if dummy have constant list of object. But dummy reference variable can refer to another list of the object.

  var dummy = [];
*/
  void addQuestions() {
    questions.add({
      'questionText': 'What\'s your favourite subject?',
      'answer': ['Math', 'Science', 'History', 'GK'],
    });
  }

  var questionIndex = 0;

/*
//Try 1
  void _answerQuestion() {
    print("questionIndex Start-> \t$questionIndex");

    // addQuestions();

    setState(() {
      if ((questionIndex + 1) >= questions.length)
        questionIndex = 0;
      else
        questionIndex++;

      print("questionIndex End-> \t$questionIndex");
    });
  }
  */

  void _answerQuestion() {
    print("questionIndex Start-> \t$questionIndex");

    setState(() {
      // if ((questionIndex + 1) >= questions.length)
      //   questionIndex = 0;
      // else
      questionIndex++;

      print("questionIndex End-> \t$questionIndex");
    });
  }

/*
  Widget checkQuestionsOver() {
    print("checkQuestionsOver-> \tquestionIndex: $questionIndex, questionsLength: ${questions.length}");
    questionIndex == questions.length
        ? Column(
            children: <Widget>[
              Text("You have successfully answered all the questions."),
              ElevatedButton(
                onPressed: (() {
                  setState(() {
                    questionIndex = 0;
                  });
                }),
                child: Text(
                  "Click to proceed again.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.blue,
                ),
              )
            ],
          )
        : Column(
            children: <Widget>[
              Question(
                questions[questionIndex]['questionText'] as String,
              ),
              // ...(questions[questionIndex]['answer'] as List<String>).map((e) => Answer(e, _answerQuestion)),
              ...(questions[questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answer, _answerQuestion);
              }).toList()
            ],
          );
  }
*/
  Widget checkQuestionsOver() => questionIndex == questions.length
      ? Column(
          children: <Widget>[
            Text("You have successfully answered all the questions."),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  questionIndex = 0;
                });
              }),
              child: Text(
                "Click to proceed again.",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.blue,
              ),
            )
          ],
        )
      : Column(
          children: <Widget>[
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            // ...(questions[questionIndex]['answer'] as List<String>).map((e) => Answer(e, _answerQuestion)),
            ...(questions[questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        );

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

    /*
    //Try 1
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Question(
                questions[questionIndex]['questionText'] as String,
              ),
              // ...(questions[questionIndex]['answer'] as List<String>).map((e) => Answer(e, _answerQuestion)),
              ...(questions[questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answer, _answerQuestion);
              }).toList()
            ],
          ),
        ),
      ),
    );
  */
  }
}
