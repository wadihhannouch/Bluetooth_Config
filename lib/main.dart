import 'dart:convert';

import 'package:blue_config/pages/loginpage.dart';
import 'package:blue_config/values/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Constants.appName,
          theme: Constants.lightTheme,
          home: LoginPage(),
        );
  }
}
