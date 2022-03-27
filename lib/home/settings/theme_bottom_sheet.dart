import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Theme.of(context).colorScheme.secondary, width: 3))),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: getThemeWidget(
                  AppLocalizations.of(context)!.light, !provider.isDark())),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: getThemeWidget(
                  AppLocalizations.of(context)!.dark, provider.isDark())),
        ],
      ),
    );
  }

  Widget getThemeWidget(String title, bool isSelected) {
    if (isSelected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      );
    } else {
      return Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ],
      );
    }
  }
}
