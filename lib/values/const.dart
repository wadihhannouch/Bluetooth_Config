  import 'package:blue_config/utils/HexColor.dart';
import 'package:flutter/material.dart';
  class Constants{

    static String appName = "SenseThis";

    //Colors for theme
  //  Color(0xfffcfcff);
    static Color lightPrimary = Color(0xfffcfcff);
//    static Color darkPrimary = Colors.black;
    static Color lightAccent = HexColor("#62a8db");
    static Color lightBG = Colors.white;
//    static Color darkBG = Colors.black;
    static Color shadowBG =  Colors.grey.withOpacity(0.5);

    static ThemeData lightTheme = ThemeData(
      brightness : Brightness.light,
      backgroundColor: lightBG,
      primaryColor: lightPrimary,
      accentColor:  lightAccent,
      cursorColor: lightAccent,
      scaffoldBackgroundColor: lightBG,
    );


  }