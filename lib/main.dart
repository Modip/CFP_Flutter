import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Menu(),
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(child:
        Text('CFP-GETECH', style: TextStyle(fontSize: 30, color: Colors.white))),
        ),
        body: Center(child:
        Text('Votre reussite notre fierte', style: TextStyle(fontSize: 30, color: Colors.black),)),
      );
  }
}



