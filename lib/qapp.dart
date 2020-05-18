import 'package:flutter/material.dart';
import 'package:trial3quiz/gethttpdata.dart';
import 'jsonQuestions.dart';

void main(){
  runApp(QApplication());
}

class QApplication extends StatefulWidget {
  @override
  _QApplicationState createState() { 
    return _QApplicationState();
  }
}

class _QApplicationState extends State<QApplication> {
  final GetHttpData getHttpData = GetHttpData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:FutureBuilder(
          future:getHttpData.getQuestions(),
          builder:(BuildContext context, AsyncSnapshot<List<QuizQuestions>> snapshot){
            if(snapshot.hasData){
              List<QuizQuestions> myquestions = snapshot.data;
              return ListView(
                children: myquestions.map((QuizQuestions myquestions) => ListTile(title:Text(myquestions.questions),)).toList()
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
      
    );
  }
}