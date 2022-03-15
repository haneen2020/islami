import 'package:flutter/material.dart';
import 'package:islami_app/home/sura_details/sura_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.lightTheme,
    );
  }
}
