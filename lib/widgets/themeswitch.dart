import 'package:ble/providers/theme_provider.dart';
import 'package:ble/values/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget ThemeSwitch(context){
         return Switch(
          value: Provider.of<ThemeProvider>(context).theme == Constants.lightTheme
              ? false
              : true,
          onChanged: (v) async{
            if (v) {
//              Provider.of<ThemeProvider>(context, listen: false)
//                  .setTheme(Constants.darkTheme, "dark");
            } else {
              Provider.of<ThemeProvider>(context, listen: false)
                  .setTheme(Constants.lightTheme, "light");
            }
          },
          activeColor: Colors.green,
          activeTrackColor: Colors.lightGreenAccent,
          inactiveThumbColor: Colors.red,
          inactiveTrackColor: Colors.redAccent,
        );
}