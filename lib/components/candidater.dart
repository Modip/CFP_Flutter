import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/accueil.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_cfp/screens/details/iconcard.dart';
import 'package:flutter_cfp/screens/details/imageandicon.dart';
import 'package:flutter_cfp/screens/details/titredescription.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Candidature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Center(child:
        Text('CFP-GETECH', style: TextStyle(fontSize: 30, color: Colors.white))),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child : Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(hintText: 'Votre prénom',
                  hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                        color: kPrimaryColor
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child : Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(
                  hintText: 'Votre nom',
                  hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                        color: kPrimaryColor
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child : Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(hintText: 'Voter email',
                  hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                        color: kPrimaryColor
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child : Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(hintText: 'Votre téléphone',
                  hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                        color: kPrimaryColor
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child : Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(hintText: 'Votre adresse',
                  hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                        color: kPrimaryColor
                    ),
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: (){},
            color: kPrimaryColor,
            child: Text('Soumettre', style: TextStyle(fontSize: 25, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
