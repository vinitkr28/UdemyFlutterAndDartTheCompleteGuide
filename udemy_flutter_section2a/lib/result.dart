import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _questionIndex;
  final VoidCallback _proceedAgain;
  final int _totalScore;

  Result(this._questionIndex, this._proceedAgain, this._totalScore);

  String get resultPhrase {
    var resultText;
    if (_totalScore <= 50)
      resultText = 'You are awesome and innocent!';
    else if (_totalScore <= 75)
      resultText = 'Pretty likeable!';
    else if (_totalScore <= 100)
      resultText = 'You are ... strange?!';
    else
      resultText = 'You are so bad!';

    return resultText;
  }

  Widget scoreText() {
    TextStyle textStyle;
    if (_totalScore <= 50)
      textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green,
      );
    else if (_totalScore <= 75)
      textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      );
    else if (_totalScore <= 100)
      textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.brown[900],
      );
    else if (_totalScore <= 150)
      textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent[700],
      );
    else
      textStyle = TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.red,
      );
    return Text(
      "\nYour total score: $_totalScore",
      style: textStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Hooray,\nYou have successfully answered all the questions."),
        scoreText(),
        Spacer(
          flex: 1,
        ),
        Text(
          resultPhrase,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        ElevatedButton(
          onPressed: _proceedAgain,
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
    );
  }
}
