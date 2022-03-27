import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  String locale = 'ar';

  void changeLocale(String currentLocale) {
    locale = currentLocale;
    notifyListeners();
  }

  bool isArabic() {
    return locale == 'ar';
  }
}
