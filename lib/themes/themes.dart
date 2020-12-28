import 'package:flutter/material.dart';
import 'package:music_app/themes/colors.dart';
class Themes{
  Themes._();
  static final ThemeData lightTheme = _lightTheme();
  static ThemeData _lightTheme(){
    return ThemeData(
      appBarTheme:AppBarTheme(
        color:AppColors.COLOR_WHITE,
      ) ,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline5: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(color: Colors.white, fontSize: 14),
        bodyText1: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        bodyText2: TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}