import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('هل بعض من الناس يوجد لديهم حساسية من القطط', true),
    Question( '3 x 4 = 15',  false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question( 'دم الدودة اخضر', true),
    Question( 'محمد ابو تريكة سجل 13 هدف امام الزمالك',  true),
    Question( 'مصر صعدت كاس العالم 3 مرات', true),
    Question( 'كيلو الحديد اثقل من كيلو القطن',false),
    Question( 'خالد بن الوليد هو سيف الله المسلول', true),
    Question( 'الزمالك نادي القرن الحقيقي', false),
    Question( 'The total surface area of two human lungs is approximately 70 square metres.', true),
    Question( '8 x 7 = 56 !', true),
    Question( 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', true),
    Question( 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', true),

  ];
  int getNextQuestion(){
    if(_questionNumber<_questionBank.length -1 ){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);

  }

  String getQuestionText (){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer (){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber == _questionBank.length -1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}

