import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/locale_provider.dart';
import 'locale_bottom_sheet.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    var localeProvider = Provider.of<LocaleProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadiusDirectional.circular(12)),
              child: Text(
                provider.isDark()
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadiusDirectional.circular(12)),
              child: Text(
                !localeProvider.isArabic() ? 'English' : 'العربية',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return ThemeBottomSheet();
        });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return LocaleBottomSheet();
        });
  }
}
