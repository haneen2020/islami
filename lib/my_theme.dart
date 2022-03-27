import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);

  static Color darkPrimary = Color(0xff141A2E);
  static Color darkYellow = Color(0xffFACC1D);

  static final ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimary,
      colorScheme: ColorScheme(
          secondary: darkYellow,
          surface: Colors.white,
          onBackground: darkYellow,
          brightness: Brightness.dark,
          onSurface: blackColor,
          onError: Colors.white,
          onSecondary: Colors.white,
          background: Colors.white,
          error: Colors.red,
          primary: darkPrimary,
          onPrimary: darkYellow),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkYellow,
        unselectedItemColor: Colors.white,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
      ));

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      colorScheme: ColorScheme(
          secondary: lightPrimary,
          surface: Colors.white,
          onBackground: Colors.white,
          brightness: Brightness.light,
          onSurface: blackColor,
          onError: Colors.white,
          onSecondary: blackColor,
          background: Colors.white,
          error: Colors.red,
          primary: lightPrimary,
          onPrimary: blackColor),
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
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
      ));
}
