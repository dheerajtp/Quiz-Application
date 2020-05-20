import 'classanswers.dart';
class Questions{

  String questions;
  List<Answers> answers;


 Questions({this.questions,this.answers});

 factory Questions.fromJson(Map<String, dynamic> json){
    
   return Questions(
    questions : json['Questions'],
    answers : json['Answers'].map<Answers>((e) => Answers.fromJson(e)).toList(),
    );
  
}

}