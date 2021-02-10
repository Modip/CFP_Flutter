import 'package:flutter/material.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_cfp/screens/details/detaildevweb.dart';

class Departement extends StatelessWidget {
  const Departement({
    Key key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          DepartementImage(
            image: "assets/images/dev.jpg",
            title: "Développent web",
            press: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Detaildevweb(),
              ),
              );
            },
          ),
          DepartementImage(
            image: "assets/images/infograph.jpg",
            title: "Développent web",
            press: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Detaildevweb(),
              ),
              );
            },
          ),
          DepartementImage(
            image: "assets/images/dev_2.jpg",
            title: "Developpent web",
            press: (){},
          ),
        ],
      ),
    );
  }
}
class DepartementImage extends StatelessWidget {
  const DepartementImage ({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);
  final String image, title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Converti la largeur de 40%
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget> [
          Image.asset(image),
          GestureDetector(
              onTap : press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "$title".toUpperCase(),
                            style: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                            ),
                        ),
                      ],
                     ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}