import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/home/hadeth/hadeth_details.dart';
import 'package:islami_app/home/sura_details/sura_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/locale_provider.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      // ChangeNotifierProvider(create:(BuildContext){return ThemeProvider();},child: MyApp()),
      // MultiProvider(providers: [
      //     Provider<ThemeProvider>(create:(_){return ThemeProvider();}),
      //      Provider<LocaleProvider>(create:(_){return LocaleProvider();})
      // ],child: MyApp())
      // MultiProvider(
      //     providers: [
      //       Provider<ThemeProvider>(create:(_)=>ThemeProvider()),
      //        Provider<LocaleProvider>(create:(_)=>LocaleProvider())
      //     ],
      //   child: MyApp(),
      // )

      MultiProvider(providers: [
    ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider()),
    ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    var localeProvider = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      locale: Locale(localeProvider.locale),
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetails.routeName: (buildContext) => SuraDetails(),
        HadethDetails.routeName: (buildContext) => HadethDetails()
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
