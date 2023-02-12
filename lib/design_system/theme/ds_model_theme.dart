import 'package:flutter/widgets.dart';

class DSModelTheme extends ChangeNotifier {
  DSModelTheme({required bool initialMode}) {
    _isDark = initialMode;
  }
  late bool _isDark;

  bool get isDark => _isDark;

  set isDark(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
