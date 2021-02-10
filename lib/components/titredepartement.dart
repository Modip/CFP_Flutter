import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';

class TitreDepartement extends StatelessWidget {
  const TitreDepartement({
    Key key,
    this.title,
    this.press,

  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitreDepartementStyle(text: title ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: kPrimaryColor,
              onPressed: press,
              child: Text("En savoir plus",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
          ),
        ],
      ),
    );
  }
}

class TitreDepartementStyle extends StatelessWidget {
  const TitreDepartementStyle({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
    Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ),
            )
          ],
        ),
      );
  }
}
