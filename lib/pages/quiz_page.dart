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

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("First Question", false),
    new Question("True Question", true),
    new Question("Third question False", false),
  ]);

  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayVisible = false;

  @override
  void initState() {
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.question_number;
    super.initState();
  }

  void handleAnswer(bool ans) {
    isCorrect = (currentQuestion.ans == ans);
    quiz.answer(isCorrect);
    this.setState((){
      overlayVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
       children: <Widget>[
         new Column(
           children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false,()=>handleAnswer(false)),
           ],
         ),
         overlayVisible == true ? new CorrectWrongOverlay(isCorrect) : new Container(),
       ],
    );
  }

}
