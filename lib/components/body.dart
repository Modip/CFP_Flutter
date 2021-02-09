import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';
import 'header_with_searchbox.dart';
import 'titredepartement.dart';
import 'departement.dart';
import 'geniecivile.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children : <Widget>[
          HeaderWithSearchBox(size: size),
          TitreDepartement(title: "Informatique", press: (){}),
          Departement(),
          TitreDepartement(title: "Genie Civile", press: (){}),
          GenieCivie(),
          SizedBox(height: kDefaultPadding),
      ],
      ),
    );
  }
}


