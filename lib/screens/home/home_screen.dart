import 'package:flutter/material.dart';
import 'package:flutter_cfp/components/body.dart';
import 'package:flutter_cfp/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
              blurRadius: 15,
              color: kPrimaryColor.withOpacity(0.5),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: SvgPicture.asset("assets/icons/facebook.svg"),
                onPressed: () {}
            ),
            IconButton(
                icon: SvgPicture.asset("assets/icons/twitter.svg"),
                onPressed: () {}
            ),IconButton(
                icon: SvgPicture.asset("assets/icons/facebook.svg"),
                onPressed: () {}
            ),

          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor:kPrimaryColor,
        leading: IconButton(
         icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: (){},
       ),
    );
  }
}
