import 'package:flutter/material.dart';
import './programmes.dart';
import './accueil.dart';
import './candidature.dart';
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
                backgroundImage: AssetImage('images/cfp.png'),
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
            Divider(),
            ListTile(
              title: Text('Programmes', style: TextStyle(fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  Programmes()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Candidature', style: TextStyle(fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  Candidature()));
              },
            ),
          ],
        ),
      );
  }
}
