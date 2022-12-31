import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/main.dart'; 

class Anewquestion extends StatefulWidget {
  const Anewquestion({super.key});

  @override
  State<Anewquestion> createState() => _AnewquestionState();
}

class _AnewquestionState extends State<Anewquestion> {
  int answer=0;
  int q=1;
  int a=1;
  int b=0; 
  String question1="";
  String output = " ";
  String choice1=" ";
  String choice2=" ";
  String choice3=" ";
  String choice4=" ";
  final edittext = TextEditingController();
  final edittext1 = TextEditingController();
  final edittext2 = TextEditingController();
  final edittext3 = TextEditingController();
  final edittext4 = TextEditingController();
  final edittextlast = TextEditingController();
  List<String> createdquestions=[];
  List<int> answerlist=[];
  List<String> createdanswers=[];
  String question="";
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
children:[
    Text(output,style: TextStyle(color: Colors.white,fontSize: 15.0),),
    Text(question,style:TextStyle(fontSize: 20.0,color:Colors.white)),
    Divider(
      height:20.0,
      color: Colors.white,
    ),
    TextField(
     
      controller: edittext,
      style: TextStyle(color: Colors.black),
      onChanged: (somevalue){setState((){
      question=somevalue;
      });},
      onSubmitted: (value) {
        question1=value;
      },
      decoration:InputDecoration(
        fillColor: Colors.grey[300],
        filled: true,
        border:OutlineInputBorder(),
        hintText:"Enter Question here..",
        
      ),
    ),
    SizedBox(
      height: 30.0,
    ),
    TextButton(
      child:Text("Submit",style: TextStyle(color:Colors.white,fontSize: 10.0),),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
      onPressed:(){
      createdquestions.add(edittext.text);
    
         setState((){
          //question=" ";
          output=output+"${a},  ${createdquestions[b]}\n";
         });
         edittext.clear();
         a++;b++;
      },
    ),
    SizedBox(
      height: 30.0,
    ),
    Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
               
                controller: edittext1,
                style: TextStyle(color: Colors.black),
                onSubmitted: (somevalue){setState((){
                choice1=somevalue;
                });
                createdanswers.add(choice1); 
                },
                decoration:InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            hintText:"Choice number 1..",
            
                ),
              ),
          ),
        ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(     
        controller: edittext2,
          style: TextStyle(color: Colors.black),
          onSubmitted: (somevalue){setState((){
          choice2=somevalue;
          });
          createdanswers.add(choice2); 
          },
          decoration:InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            hintText:"Choice number 2..",
            
          ),
        ),
      ),
    ),
    
      ],
    ),
    Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
               
                controller: edittext3,
                style: TextStyle(color: Colors.black),
                onSubmitted: (somevalue){setState((){
                choice3=somevalue;
                });
                createdanswers.add(choice3); 
                },
                decoration:InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            hintText:"Choice number 3..",
            
                ),
              ),
          ),
        ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            hintText:"Choice number 4..",
          ),
          controller: edittext4,
          style: TextStyle(color: Colors.black),
          onSubmitted: (somevalue){setState((){
          choice4=somevalue;
  });
          createdanswers.add(choice4);
          decoration:InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            hintText:"Choice number 4..",
          
            
          );
  }),
      ),
    ),
      ],
    ),
  Divider(
    height:20.0,
  ),
  SizedBox(
    height:10.0,
  ),
  Text("Please Enter The Answer interms of the index",style: TextStyle(fontSize: 20.0,color: Colors.white),),
  SizedBox(
    height:10.0,
  ),
  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
             fillColor: Colors.grey[300],
            filled: true,
            border:OutlineInputBorder(),
            labelText: 'Enter Number'),
 keyboardType: TextInputType.numberWithOptions(),
inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
  TextInputFormatter.withFunction(
    (oldValue, newValue) => newValue.copyWith(
      text: newValue.text.replaceAll('.', ','),
    ),
  ),
],
          controller: edittextlast,
          style: TextStyle(color: Colors.black),
          onSubmitted: (some){
          //  answer=some;
           answer = int.parse(edittextlast.text);
          })),
          // createdanswers.add(some); },
          // decoration:InputDecoration(
            
          //   fillColor: Colors.grey[300],
          //   filled: true,
          //   border:OutlineInputBorder(),
          //   hintText:"Enter index, eg(1 for choice 1)",
            
          // ),
          // keyboardType: TextInputType.number,
          // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      
    
  SizedBox(
    height: 20.0,
  ),
  ElevatedButton(onPressed: (){
   createdanswers.add(edittext1.text);
   createdanswers.add(edittext2.text);
   createdanswers.add(edittext3.text);
   createdanswers.add(edittext4.text);
   answerlist.add(int.parse(edittextlast.text));
   edittext1.clear();
   edittext2.clear();
   edittext3.clear();
   edittext4.clear();
   edittextlast.clear();
   print("Question quee "+ createdanswers[3]);
   print(createdquestions[0]);
   print(answerlist[0]);
   print("Done");
 setState(() {
   q++;
 });

  }, child: Text("Submit Question${q}")),
     SizedBox(height:20.0),
     Row(
       children: [
         Text("Done, with the questions?", style: TextStyle(color:Colors.blue,fontSize: 20.0),),
         SizedBox(width: 10.0,),
         ElevatedButton(onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>QuizPage(questions:createdquestions,answernumb:answerlist,answers:createdanswers)));
         } , child: Text("Submit All"))
       ],
     )
     ]));
  }
}