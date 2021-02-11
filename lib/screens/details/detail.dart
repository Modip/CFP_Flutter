import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/components/candidater.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_cfp/screens/details/imageandicon.dart';
import 'package:flutter_cfp/screens/details/titredescription.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            ImageAndIcon(size: size),
            Titredescription(
              title: "Infographie",
              description: "L'infographie est le domaine de la création d'images."),
              SizedBox(
                height: kDefaultPadding,
              ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                    //  Navigator.push(context, MaterialPageRoute(
                    //    builder: (context) => Accueil(),
                    //  ),
                     // );
                    },
                    child: Text("Accueil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width /2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30)
                      ),
                    ),
                    color: kPrimaryColor,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FormScreen(),
                      ),
                      );
                    },
                    child: Text("Candidater",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ]
            ),
        ]
      ),
    );
  }
}