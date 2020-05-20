
class Answers{

  String answer;
  bool isTrue;


 Answers({this.answer,this.isTrue});

 factory Answers.fromJson(Map<String, dynamic> json){
    
   return Answers(
    answer : json['Answers'],
    isTrue : json['isTrue'],
  );
}

}