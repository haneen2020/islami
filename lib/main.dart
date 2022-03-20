import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/home/hadeth/hadeth_details.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
        HadethDetails.routeName: (buildContext) => HadethDetails()
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.lightTheme,
    );
  }
}
