import 'classanswers.dart';
import 'classquestions.dart';
import 'package:flutter/material.dart';
import 'qapplicationhome.dart';

class QuizDetail extends StatelessWidget {
  final Questions que;

  QuizDetail({@required this.que});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz Application"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Center(child: Text("Question",
                        style:TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Cabin',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        ),
                      ),
                   Center(
                      child: ListTile(
                          title: Text(que.questions,
                          style:TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SourceB',
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      SizedBox(
                        height:30.0,
                      ),

                      SizedBox(
                        width: 200.0,
                        height: 50.0,
                        
                      child:RaisedButton(
                        
                        onPressed: (){
                          if (que.answers[0].isTrue == true) {
                            totalMark++;
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Correct"),
                                    );
                                    });
                          }else {
                            totalMark--;
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Wrong"),
                                    );
                                    });
                          }
 
                        },
                        child: Text("A:   ${que.answers[0].answer}",
                        style:TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Source',
                          letterSpacing: 1.0,
                        ),),
                      ),
                      ),
                      SizedBox(
                        height:10.0,
                      ),
                      SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child:RaisedButton(
                        onPressed: (){
                          if (que.answers[1].isTrue == true) {
                            totalMark++;
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Correct"),
                                    );
                                    });
                          }else {
                            totalMark--;
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Wrong"),
                                    );
                                    });
                          }
                        },
                        child: Text("B:   ${que.answers[1].answer}",
                        style:TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Source',
                          letterSpacing: 1.0,
                        ),),
                      ),
                      ),
                      SizedBox(
                        height:10.0,
                      ),
                      SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child:RaisedButton(
                        onPressed: (){
                          if (que.answers[2].isTrue == true) {
                            totalMark++;
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Correct"),
                                    );
                                    });
                          }else {
                            totalMark--;
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Wrong"),
                                    );
                                    });
                          }
                        },
                        child: Text("C:   ${que.answers[2].answer}",
                        style:TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Source',
                          letterSpacing: 1.0,
                        ),),
                      ),
                      ),
                      SizedBox(
                        height:10.0,
                      ),
                      SizedBox(
                        width: 200.0,
                        height: 50.0,
                      child:RaisedButton(
                        onPressed: (){
                          if (que.answers[3].isTrue == true) {
                            totalMark++;
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Correct"),
                                    );
                                    });
                          }else {
                            totalMark--;
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:Text("Wrong"),
                                    );
                                    });
                          }
                        },
                        child: Text("D:   ${que.answers[3].answer}",
                        style:TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Source',
                          letterSpacing: 1.0,
                        ),),
                      ),
                      ),
                      SizedBox(
                        height:50.0,
                      ),

                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );;
  }
}