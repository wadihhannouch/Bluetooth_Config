import 'dart:convert';

import 'package:ble/pages/loginpage.dart';
import 'package:ble/pages/splash.dart';
import 'package:ble/providers/theme_provider.dart';
import 'package:ble/values/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, ThemeProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: appProvider.theme,
//          theme: Constants.lightTheme,
//          darkTheme: appProvider.theme,
          home: SplashPage(),
        );
      },
    );
  }
}
