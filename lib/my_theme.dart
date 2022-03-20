import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);

  static final ThemeData darkTheme = ThemeData();

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ));
}
