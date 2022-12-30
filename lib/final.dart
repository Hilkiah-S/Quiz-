import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
class AnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return
     MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.close, color: Colors.red,size: 150,),
              Text("Sorry")
            ],
          ),
        ),
      ),
    );}
  }
