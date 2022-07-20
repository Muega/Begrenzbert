import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Attributes
  int _questIndex = 0;

  //Methods
  void _answerQuestion() {
    setState(() {
      _questIndex = (_questIndex + 1) % 3;
    });
    print("Answer chosen!");
  }

  //Build
  Widget build(BuildContext ctx) {
    List<String> questList = ["Question 1", "Question 2", "Question 3"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Begrenzbert"),
        ),
        body: Column(
          children: [
            Question(questList[_questIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
