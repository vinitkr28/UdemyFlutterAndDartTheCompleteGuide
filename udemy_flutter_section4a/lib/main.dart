import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App Scaffold")),
      body: sample(),
    );
  }

  Widget sample() {
    return Container(
      alignment: Alignment.center,
      child: Text("This is the body."),
    );
  }

  Widget sample1() {
    return Column(children: <Widget>[
      Card(
        child: Container(
          width: double.infinity,
          child: Text(
            "Card!",
            style: TextStyle(backgroundColor: Colors.greenAccent),
          ),
        ),
      ),
      Card(
        child: Text("Card"),
        elevation: 5,
      ),
      Card(
        child: Text('List of Text'),
      )
    ]);
  }

  Widget sample2() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text(
                "Card!",
                style: TextStyle(backgroundColor: Colors.greenAccent),
              ),
            ),
          ),
          Card(
            color: Colors.pinkAccent[100],
            child: Text("Card"),
            elevation: 5,
          ),
          Card(
            child: Text('List of Text'),
          )
        ]);
  }

}
