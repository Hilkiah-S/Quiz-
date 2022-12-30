import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

class Pass extends StatefulWidget {
  
  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
    int passed=0;
QuizPage  any = new QuizPage ();
//const passed = any.correct;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Icon(Icons.check,color: Colors.green,size: 150.0),
            Text("Great work"),
            Text("You got /3")],
          ),
        ),
      ),
    );
  }
}