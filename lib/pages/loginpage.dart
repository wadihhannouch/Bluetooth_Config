import 'package:ble/utils/delayedanimation.dart';
import 'package:ble/widgets/login_widget.dart';
import 'package:ble/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

var _alignment = Alignment.bottomCenter;

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  Animation<double> sizeAnimation;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Material(
        child:
        Container(
        color: Colors.white,
        child:
        Column(
          children: [
            Expanded(
                flex: 2,
                child: DelayedAnimation (child: logo() , delay: 500),
            ),
            Expanded (
                flex : 4,
                child:
                DelayedAnimation (child: login_widget(context) , delay: 1000),
            )
          ],
        )));
  }


}
