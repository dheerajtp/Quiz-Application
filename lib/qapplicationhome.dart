import 'package:flutter/material.dart';
import 'package:trial7quiz/questions.dart';
import 'getHttpData.dart';

void main(){
  runApp(QApplication());
}


class QApplication extends StatelessWidget {
  final GetHttpData getHttpData = GetHttpData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future:getHttpData.getQuestions(),
        builder: (BuildContext context, AsyncSnapshot<List<QuizQuestions>> snapshot){

          if(snapshot.hasData){
            List<QuizQuestions> myquestions = snapshot.data;
            return ListView(
              children: myquestions.map((QuizQuestions myquestions) => ListTile(title:Text(myquestions.questions),)).toList(),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}