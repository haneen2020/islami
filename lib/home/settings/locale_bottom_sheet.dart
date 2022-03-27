import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/locale_provider.dart';

class LocaleBottomSheet extends StatefulWidget {
  @override
  State<LocaleBottomSheet> createState() => _LocaleBottomSheetState();
}

class _LocaleBottomSheetState extends State<LocaleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var localeProvider = Provider.of<LocaleProvider>(context);
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
                localeProvider.changeLocale('En');
              },
              child: getLanguageWidget('English', !localeProvider.isArabic())),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                localeProvider.changeLocale('ar');
              },
              child: getLanguageWidget('العربية', localeProvider.isArabic())),
        ],
      ),
    );
  }

  Widget getLanguageWidget(String title, bool isSelected) {
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
