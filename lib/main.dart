import 'package:flutter/material.dart';
import 'package:quiz/final.dart';
import 'package:quiz/pass.dart';
import 'package:quiz/create questions.dart';
//import 'globals.dart' as globals;

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes:{
     //'/': (context) => const Anewquestion(),
    '/fail':(context)=>AnswerPage(),
    '/pass':(context)=>Pass(),
    },
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Anewquestion(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {

  var questions;
  var answernumb;
  var answers;
  QuizPage({Key? mykey,this.questions,this.answernumb,this.answers}):super(key:mykey); 
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int c1=0;
  int c2=1;
  int c3=2;
  int c4=3;
   int a = 0;
  
  int s=0;
  int v=0;
  int z=0;
  int r=1;
  int correct=0;
  bool e = false;
  
  int loon(correct){
    return correct;
  }
 void twice(a,r){
if(a==r){
       print("THis works");
}}
  void verify(answersnumb,useranswer,a){
    
   // print(isittrue);
    //print(useranswer);
     if(answersnumb[a]==useranswer[a]){
      correct+=0;
      s+=1;
      loon(correct);
  print(answersnumb);
  print(useranswer);

  if(true){
 print(a);
  }
   // (a>2)? Navigator.pushNamed(context,'/decide'):print("Not yet");
    }
    if(a==2){
      if(s>=2){
     Navigator.pushNamed(context, '/pass');
      }
      if(s<2){
        Navigator.pushNamed(context, '/fail');
      }
    }

    //(a>2&&s>=2)? Navigator.pushNamed(context, '/pass'):Navigator.pushNamed(context, '/fail'); }
       /*s+=1;
       print("Same");
       z+=1;
       }
       else{
        print("DIFFERENT");
        z+=1;
       }
       
       z+=1;*/
       
       //if(a==1 ){
        //Navigator.pushNamed(context, '/pass');
        
      // }
       /*if(a>2){
        //Navigator.pushNamed(context, '/fail');
       print("Second time");
       }*/
     
  }
  
  List<int> useranswer=[];
  List<int> isittrue = [1,4,2];
  List<String> Questions=[
  "Is the First question true or false?",
   "Is the Second question true or false?",
   "Is the Third question true or false?" ,
  ];
  List<Widget> AtomList = [
    Icon(Icons.check,
    color: Colors.green,),
    Icon(Icons.close,
    color:Colors.red,)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex:6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                widget.questions[a],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding:EdgeInsets.symmetric(horizontal:5.0,vertical:3.0),
                        backgroundColor:Colors.green,
                      ),
                      child: Text(
                        widget.answers[c1],
                        style: TextStyle(
                          
                          
                         // textColor: Colors.white,
                      color: Colors.white,
                         // color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          useranswer.add(1);
                          
                        });
                       verify(widget.answernumb,useranswer,a);
                          a+=1;
                          c4+=4; 
                              c1+=4;
                              c2+=4; 
                              c3+=4; //The user picked true.
                      },
                    ),
                  ),
                    SizedBox(
                      width:10,
                    ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding:EdgeInsets.symmetric(horizontal:5.0,vertical:3.0),
                        backgroundColor:Colors.green,
                      ),
                      child: Text(
                        widget.answers[c2],
                        style: TextStyle(
                          
                          
                         // textColor: Colors.white,
                      color: Colors.white,
                         // color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          useranswer.add(2);
                          
                        });
                       verify(widget.answernumb,useranswer,a);
                          a+=1;
                          c4+=4; 
                          c1+=4;
                          c2+=4; 
                          c3+=4;//The user picked true.
                      },
                    ),
                  ),
                ],
              ),
            ),
        ),
        
        Expanded(
          flex: 4,
          child: Padding(
            padding:const EdgeInsets.all(6.0),
            child: Expanded(
              
              child: Row(
                     
                      children: [
                        Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding:EdgeInsets.symmetric(horizontal:5.0,vertical:3.0),
                              backgroundColor:Colors.green,
                            ),
                            child: Text(
                              widget.answers[c3],
                              style: TextStyle(
                                
                                
                               // textColor: Colors.white,
                            color: Colors.white,
                               // color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                useranswer.add(3);
                                
                              });
                             verify(widget.answernumb,useranswer,a);
                                a+=1;
                                c4+=4; 
                                c1+=4;
                                c2+=4; 
                                c3+=4; //The user picked true.
                            },
                          ),
                        ),
                          SizedBox(
                            width:10,
                          ),
                        Expanded(
                        
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding:EdgeInsets.symmetric(horizontal:5.0,vertical:3.0),
                              backgroundColor:Colors.green,
                            ),
                            child: Text(
                              widget.answers[c4],
                              style: TextStyle(
                                
                                
                               // textColor: Colors.white,
                            color: Colors.white,
                               // color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                useranswer.add(4);
                               
                              });
                             verify(widget.answernumb,useranswer,a);
                                a+=1;
                                c4+=4; 
                                c1+=4;
                                c2+=4; 
                                c3+=4;
                                 //The user picked true.
                            },
                          ),
                        ),
                      ],),
            ),
          ),
        ),
        
        
        //TODO: Add a Row here as your score keeper
      Row(
      
        children:AtomList,
      )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
