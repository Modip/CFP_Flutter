import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
  return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {

  String _prenom;
  String _nom;
  String _adresse;
  String _email;
  String _telephone;

  final GlobalKey<FormState>  _formKey = GlobalKey<FormState>();

  Widget _buildPrenom() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Votre Prenom',labelText: "Prenom",
        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
              color: kPrimaryColor
          ),
        ),
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Prenom est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _prenom = value;
      },
    );
  }

  Widget _buildNom(){
    return TextFormField(
      decoration: InputDecoration(hintText: 'Votre Nom',labelText: "Nom",
        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
              color: kPrimaryColor
          ),
        ),
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Nom est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _nom = value;
      },
    );
  }

  Widget _buildAdresse(){
    return TextFormField(
      decoration: InputDecoration(hintText: 'Votre adresse',labelText: "Adresse",
        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
              color: kPrimaryColor
          ),
        ),
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Adresse est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _adresse = value;
      },
    );
  }
  Widget _buildEmail(){
    return TextFormField(
      decoration: InputDecoration(hintText: 'Votre email',labelText: "Email",
        hintStyle: TextStyle(fontSize: 20,color: Colors.white),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
              color: kPrimaryColor
          ),
        ),
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Email est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildTelephone(){
    return TextFormField(
      decoration: InputDecoration(hintText: 'Votre telephone', labelText: "Telephone",
        hintStyle: TextStyle(fontSize: 20, color: Colors.white),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
              color: kPrimaryColor
          ),
        ),
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Telephone est obligatoire';
        }
        return null;
      },
      onSaved: (String value) {
        _telephone = value;
      },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Center(child:
        Text('CFP-GETECH', style: TextStyle(fontSize: 30, color: Colors.white)
        ),
        ),
      ),

        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              child : Padding (
                padding: const EdgeInsets.all(13.0),
                child: Form(
                  key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children : <Widget> [
                      _buildPrenom(),
                      _buildNom(),
                      _buildAdresse(),
                      _buildEmail(),
                      _buildTelephone(),
                      SizedBox(height: 100),
                      RaisedButton(
                        child: Text('Soumettre', style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        onPressed: () {
                            if(!_formKey.currentState.validate()){
                              return;
                            }
                            _formKey.currentState.save();
                            print(_prenom);
                            print(_nom);
                            print(_adresse);
                            print(_email);
                            print(_telephone);
                        },
                        color: kPrimaryColor,
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ]
         ),
        ),
      );
    }

  }

