import 'package:flutter/material.dart';
import 'package:quizy/ui/answer.dart';
import 'package:quizy/utils/question.dart';
import 'package:quizy/utils/quiz.dart';
import 'package:quizy/ui/questions.dart';
import 'package:quizy/ui/correct_wrong.dart';

class QuizPage extends StatefulWidget {

  @override
  State createState() => new QuizPageState();

}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
       children: <Widget>[
         new Column(
           children: <Widget>[
            new AnswerButton(true, () =>debugPrint("true ")),
            new QuestionText("Ravi is my best friend ", 1),
            new AnswerButton(false,()=>debugPrint("False")), 

           ],
           
         ),
         new CorrectWrongOverlay(),
       ],
    );
  }

}
