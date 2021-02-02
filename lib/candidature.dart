import 'package:flutter/material.dart';
class Candidature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child:
        Text('CFP-GETECH', style: TextStyle(fontSize: 30, color: Colors.white))),
      ),
      body: Column(
    children: <Widget>[
      TextField(
        decoration: InputDecoration(hintText: 'Voter prénom'),

    ),
      RaisedButton(),
    ],
    ),
    );
  }
}
