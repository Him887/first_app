import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> { 

  var index = 0;

  void pressed() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var ques = [
      {
        "questext": "q1",
        "ans": ["q1","q1"],
      },
      {
        "questext": "q2",
        "ans": ["q2","q2"],
      },
      {
        "questext": "q3",
        "ans": ["q3","q3"],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Column(
          children: [
            Question(
              ques[index]["questext"],
            ),
            ...(ques[index]["ans"] as List<String>).map((answer) {
              return Answer(pressed,answer);
            }).toList()
          ],
        )
      ),
    );

  }
}