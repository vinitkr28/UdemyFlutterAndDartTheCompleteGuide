import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void doSomething() {
    print("doSomething clicked.");
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    void doSomething2() {
      questionIndex++;
      print("doSomething2 clicked. questionIndex-> ${questionIndex}");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(questions.elementAt(questionIndex)),
              ElevatedButton(
                onPressed: doSomething,
                child: Text('Click1'),
              ),
              ElevatedButton(
                onPressed: doSomething2,
                child: Text('Click2'),
              ),
              ElevatedButton(
                onPressed: () => print('3'),
                child: Text('Click3'),
              ),
              ElevatedButton(
                onPressed: () => {print('4')},
                child: Text('Click4'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('5');
                },
                child: Text('Click5'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
