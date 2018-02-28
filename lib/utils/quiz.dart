import 'question.dart';

class Quiz {
  List<Question> _question;
  int _currentQuestionindex = -1;
  int _score = 0;

  Quiz(this._question) {
    _question.shuffle();
    
  }

  List<Question> get question => _question;
  int get length => _question.length;
  int get question_number => _currentQuestionindex+1;
  int get score => _score;

  Question get nextQuestion {
    _currentQuestionindex++;
    if(_currentQuestionindex >= length) return null;
    return _question[_currentQuestionindex];

  }
  void answer(bool isCorrect) {
    if(isCorrect ) _score ++;
  }

}