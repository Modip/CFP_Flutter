import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/components/candidater.dart';
import 'package:flutter_cfp/components/departement.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_cfp/screens/details/iconcard.dart';
import 'package:flutter_cfp/screens/details/imageandicon.dart';
import 'package:flutter_cfp/screens/details/titredescription.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            ImageAndIcon(size: size),
            Titredescription(
              title: "Infographie",
              description: "Lorem Infographie leeeoe nvbvryc cvnvuaia"),
              SizedBox(
                height: kDefaultPadding,
              ),

            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width /2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      ),
                    ),
                    color: kPrimaryColor,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Body(),
                      ),
                      );
                    },
                    child: Text("Candidater",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Departement(),
                        ),
                        );
                      },
                      child: Text("Accueil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ))

              ],
            )

        ]

        ),
    );

  }
}