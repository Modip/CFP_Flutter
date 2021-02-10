import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_cfp/screens/details/iconcard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIcon extends StatelessWidget{
  const ImageAndIcon({
    Key key,
    @required
  this.size
}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding : const EdgeInsets.only(bottom: kDefaultPadding * 3),
        child: SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
            Expanded(

              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding*2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                    ),
                  ),
                Spacer(),
                IconCard(icon: "assets/icons/facebook.svg"),
                IconCard(icon: "assets/icons/facebook.svg"),
                IconCard(icon: "assets/icons/twitter.svg"),
                IconCard(icon: "assets/icons/twitter.svg"),
             ],
             ),
            ),
          ),
                Container(
                height: size.height *0.7,
                 width: size.width *0.6,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(60),
                     bottomLeft: Radius.circular(60),
              ),
              boxShadow:[
                BoxShadow(
                offset: Offset(0, 10),
                  blurRadius: 60,
                ),
              ],
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/infograph.jpg"),
                ),
                   ),
                ),
            ],
          ),
        ),
    );
  }
}

