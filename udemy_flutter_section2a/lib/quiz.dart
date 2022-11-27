import 'package:flutter/cupertino.dart';
import 'package:udemy_flutter_section2a/answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback _selectHandler;
  final _questions;
  final _questionIndex;
  // final List<Map<String, Object>> _ques;

  Quiz(this._selectHandler, this._questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          _questions[_questionIndex]['questionText'] as String,
        ),
        ...(_questions[_questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answer, _selectHandler);
        }).toList()
      ],
    );
  }
}