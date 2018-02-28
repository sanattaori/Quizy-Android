import 'package:flutter/material.dart';
import 'package:quizy/ui/answer.dart';
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
            new AnswerButton(true, () =>debugPrint("true ")),
            new Material(
              color:  Colors.white,
              child: new Center(
                child: new Padding(
                  padding: new EdgeInsets.symmetric(vertical: 20.0),
                  child: new Center(
                    child: new Text("Ravi's My freind"),
                  ),
                  
                ),
              ),

            ),
            new AnswerButton(false,()=>debugPrint("False")), 

           ],
           
         )
       ],
    );
  }

}
