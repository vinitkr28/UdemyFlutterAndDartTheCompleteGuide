import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  String buttonText;

  Answer(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: Colors.blue,
    );

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        style: style,
      ),
    );
  }
}
