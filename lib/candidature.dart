import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      Container(
        child : Padding (
          padding: const EdgeInsets.all(8.0),
      child:TextField(
        decoration: InputDecoration(hintText: 'Votre prénom'),
        ),
        ),
      ),
      Container(
      child : Padding (
        padding: const EdgeInsets.all(8.0),
        child:TextField(
          decoration: InputDecoration(hintText: 'Votre nom'),
          ),
        ),
      ),
      Container(
      child : Padding (
        padding: const EdgeInsets.all(8.0),
        child:TextField(
          decoration: InputDecoration(hintText: 'Voter email'),
          ),
        ),
      ),
      Container(
        child : Padding (
        padding: const EdgeInsets.all(8.0),
         child:TextField(
           decoration: InputDecoration(hintText: 'Voter téléphone'),
          ),
        ),
      ),
      Container(
        child : Padding (
          padding: const EdgeInsets.all(8.0),
          child:TextField(
            decoration: InputDecoration(hintText: 'Voter adresse'),
          ),
        ),
      ),
      RaisedButton(
        onPressed: (){},
        color: Colors.lightGreen,
        child: Text('Soumettre', style: TextStyle(fontSize: 25, color: Colors.white),),
      ),
    ],
    ),
    );
  }
}
