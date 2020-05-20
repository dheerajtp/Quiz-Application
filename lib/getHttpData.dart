import 'dart:convert';

import 'package:http/http.dart';
import 'classanswers.dart';
import 'classquestions.dart';

//import 'questions.dart';
class GetHttpData{
  final String questionsUrl = "http://www.mocky.io/v2/5ebd2f5f31000018005b117f";
  Future<List<Questions>> getQuestions() async{
   Response res= await get(questionsUrl);
   //print("1");
   if(res.statusCode == 200){
    Map body = jsonDecode(res.body);
    List questions = body['Quiz Questions'];
    //print('${questions[0]}');
    List<Questions> quiz = questions.map((e) => Questions.fromJson(e)).toList();
    //print('${quiz[0].questions}');
    //print('${quiz[0].answers}');
    return quiz;
    
     
   }else{
     throw'Cant Get Questions';
   }
  }
}