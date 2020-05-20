import 'package:flutter/material.dart';
import 'getHttpData.dart';
import 'classquestions.dart';
import 'classanswers.dart';
import 'quizdetails.dart';

int totalMark =0;
void main(){
  runApp(QApplication());
}


class QApplication extends StatefulWidget {
  
  @override
  _QApplicationState createState() => _QApplicationState();
}

class _QApplicationState extends State<QApplication> {
  List<Questions> que;
  Future<List<Questions>> getData() async{
    que = await GetHttpData().getQuestions();
  }
  void initState() {
    getData();
  }

  final GetHttpData getHttpData = GetHttpData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FutureBuilder(
          future: getHttpData.getQuestions(),
          builder: (BuildContext context, AsyncSnapshot<List<Questions>> snapshot) {
            if (snapshot.hasData) {
              
              List<Questions> posts = snapshot.data;
              return ListView(
                children: posts
                    .map(
                      (Questions que) => ListTile(
                        title: Text(que.questions,
                        style:TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'SourceB',
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            ),),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => QuizDetail(
                              que: que,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
              
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
    
  }
}