import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:HOme()));
}

class HOme extends StatefulWidget {
  

  @override
  State<HOme> createState() => _HOmeState();
}

class _HOmeState extends State<HOme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child:Column(
          children:<Widget>[
           Row(
            children:<Widget>[
              TextButton(
                onPressed: (){},
                style:ButtonStyle(
                  foregroundColor:MaterialStateProperty.all<Color>(Colors.green),
                ),
                child:Text("True",style: TextStyle(color: Colors.white,fontSize:20.0))
              ),
            ]
           ),
          ],
        ),
      )
    );
  }
}