import 'package:flutter/material.dart';
import 'package:flutter_cfp/screens/home/home_screen.dart';
import 'package:flutter_cfp/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // root of our application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CFP-Getech',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}