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
          title:Text("Q&A"),
        ),
        body:QApplication(),
      ),
    );
  }
}