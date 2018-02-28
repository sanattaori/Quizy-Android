import 'package:flutter/material.dart';
import 'package:quizy/pages/quiz_page.dart';
//quiz page


class landingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
        child: new InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizPage())),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Let's Quizy",style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
              new Text("Tap to start!",style: new TextStyle(color: Colors.red,fontSize: 20.0,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
    );
  }

}