import 'package:flutter/material.dart';

import 'package:quizy/utils/question.dart';
import 'package:quizy/utils/quiz.dart';

class QuizPage extends StatefulWidget {

  @override
  State createState() => new QuizPageState();

}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
       children: <Widget>[
         new Column(
           children: <Widget>[
             new Expanded(
               child: new Material(
             color: Colors.greenAccent,
             child: new InkWell(
               onTap:  ()=> debugPrint("answer is true"),
               child: new Center(
                 child: new Container(
                 child: new Text("True"),
               ),
               )
             ),
           ),
             ),
             new Expanded(
               child: new Material(
             color: Colors.redAccent,
             child: new InkWell(
               onTap:  ()=> debugPrint("answer is false"),
               child: new Center(
                 child: new Container(
                 child: new Text("False"),
               ),
               )
             ),
           ),
             ),
             
           ],
           
         )
       ],
    );
  }

}
