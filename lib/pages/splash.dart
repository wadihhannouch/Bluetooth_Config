import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';

class SplashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(child:
        Image.asset("images/loader.gif"),),
    );
  }
}
