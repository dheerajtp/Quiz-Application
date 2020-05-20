import 'package:flutter/material.dart';
import 'qapplicationhome.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:Text("Quiz App"),
        
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,),
        body:QApplication(),
      ),
    );
  }
}