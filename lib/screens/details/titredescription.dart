import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';

class Titredescription extends StatelessWidget{
  const Titredescription({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);
  final String  title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget> [
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: "$title\n",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text: "$description",
                      style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold
                      ),
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
  }