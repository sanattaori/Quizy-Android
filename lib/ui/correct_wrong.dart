import 'dart:math';

import 'package:flutter/material.dart';

class CorrectWrongOverlay extends StatefulWidget {
  final bool _isCorrect;
  CorrectWrongOverlay(this._isCorrect);

  @override
  State createState() => new CorrectWrongOverlayState();
  }
  
class CorrectWrongOverlayState extends State<CorrectWrongOverlay> with SingleTickerProviderStateMixin {
  
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
    void initState() {
      _iconAnimationController = new AnimationController(duration: new Duration(seconds: 4),vsync: this);
      _iconAnimation = new CurvedAnimation(parent: _iconAnimationController,curve: Curves.elasticOut);
      _iconAnimation.addListener(()=>this.setState((){}));
      _iconAnimationController.forward();
      super.initState();
    }
 
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => debugPrint("tapped overlay"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: new Transform.rotate(
                angle: _iconAnimation.value * 2 * PI,
                child: new Icon(widget._isCorrect == true ? Icons.done : Icons.clear,size: _iconAnimation.value * 80.0,),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(bottom: 20.0),
            ),
            new Text(widget._isCorrect == true ? "Correct!" : "Wrong!",style: new TextStyle(color: Colors.white,fontSize: 30.0),)
          ],
        ),
      ),
    );
  }
}

