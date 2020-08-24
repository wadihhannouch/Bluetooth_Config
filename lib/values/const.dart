  import 'package:ble/utils/HexColor.dart';
import 'package:flutter/material.dart';
  class Constants{

    static String appName = "SenseThis";

    //Colors for theme
  //  Color(0xfffcfcff);
    static Color lightPrimary = Color(0xfffcfcff);
//    static Color darkPrimary = Colors.black;
    static Color lightAccent = HexColor("#62a8db");
    static Color darkAccent = Colors.red[400];
    static Color lightBG = Colors.white;
//    static Color darkBG = Colors.black;
    static Color ratingBG = Colors.yellow[600];
    static Color shadowBG =  Colors.grey.withOpacity(0.5);

    static ThemeData lightTheme = ThemeData(
      brightness : Brightness.light,
      backgroundColor: lightBG,
      primaryColor: lightPrimary,
      accentColor:  lightAccent,
      cursorColor: lightAccent,
      scaffoldBackgroundColor: lightBG,
    );

    var defaultTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    accentColor: Colors.cyan[600],
//
    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    );

    Color _getColorFromHex(String hexColor) {
      hexColor = hexColor.replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF" + hexColor;
      }
      if (hexColor.length == 8) {
        return Color(int.parse("0x$hexColor"));
      }
    }
  }