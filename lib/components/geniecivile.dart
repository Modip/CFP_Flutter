import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';


class GenieCivie extends StatelessWidget{
  const GenieCivie ({
    Key key,
  }) : super(key: key);
  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          GeniecivileImage(
            image:"assets/images/typefor.png",
            press: (){},
          ),
          GeniecivileImage(
            image:"assets/images/cfp_2.png",
            press: (){},
          ),
        ],
      ),
    );
  }

}
class GeniecivileImage extends StatelessWidget{
  const GeniecivileImage({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}