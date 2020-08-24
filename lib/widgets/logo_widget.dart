import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget logo(){
  return Container(
      decoration: BoxDecoration(color: Colors.white),
      child:Image.asset(
        "images/logo.png",
        fit: BoxFit.contain,)
  );
}