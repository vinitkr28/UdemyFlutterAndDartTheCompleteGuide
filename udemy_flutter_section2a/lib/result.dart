import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _questionIndex;
  final VoidCallback _proceedAgain;

  Result(this._questionIndex, this._proceedAgain);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("You have successfully answered all the questions."),
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
