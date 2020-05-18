import 'dart:convert';

import 'package:http/http.dart';

import 'questions.dart';
class GetHttpData{
  final String questionsUrl = "http://www.mocky.io/v2/5ebd2f5f31000018005b117f";

 Future<List<QuizQuestions>> getQuestions() async{
   Response res= await get(questionsUrl);

   if(res.statusCode == 200){
     List<dynamic> body = jsonDecode(res.body);

     List<QuizQuestions> myquestions = body.map((dynamic item) => QuizQuestions.fromJson(item)).toList();
     return myquestions;

   }else{
     throw'Cant Get Questions';
   }
  }
}