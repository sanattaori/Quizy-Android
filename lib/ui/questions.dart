import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;

  @override
  State createState() => new QuestionTextState();

  QuestionText(this._question, this._questionNumber);
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation; 
  AnimationController _fontSizeAnimationController;

  @override
    void initState() {
      _fontSizeAnimationController = new AnimationController(duration: new Duration(milliseconds: 500 ),vsync: this); 
      _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationController,curve: Curves.linear);
      super.initState();
       
    }

  @override
  Widget build(BuildContext context) {
    return new Material(  
              color:  Colors.white,
              child: new Center(
                child: new Padding(
                  padding: new EdgeInsets.symmetric(vertical: 20.0),
                  child: new Center(
                    child: new Text("Statement" + widget._questionNumber.toString() + " :"+ widget._question,
                    style: new TextStyle(fontSize: _fontSizeAnimation.value * 15
                  ),
                  
                ),
              ),
                ),
              ),
            );
  

}