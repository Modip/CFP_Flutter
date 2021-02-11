import 'package:flutter/material.dart';
import './accueil.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: <Widget>[
            DrawerHeader(
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(colors: [Colors.deepOrangeAccent, Colors.white])
              // ),
              child:CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/cfp.png'),
              ),
            ),
            ListTile(
              title: Text('Accueil', style: TextStyle(fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  Accueil()));
              },
            ),
          ]
      ),
    );

  }
}
