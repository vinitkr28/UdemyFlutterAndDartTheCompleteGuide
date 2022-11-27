import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler;

  final VoidCallback selectHandler;
  //VoidCallback tells Flutter that will get a function here that does not accept any arguments, so that receives no input and also won't return anything.

  Answer(this.selectHandler);

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
          'Answer 1',
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
