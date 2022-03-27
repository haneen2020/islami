import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeth.dart';
import 'package:islami_app/home/radio.dart';
import 'package:islami_app/home/settings/settings.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'home/hadeth/tasbeh.dart';
import 'home/quran/quran.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
                  AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.headline1,
            )),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    Quran(),
    Hadeth(),
    Tasbeh(),
    Radioo(),
    Settings(),
  ];
}
