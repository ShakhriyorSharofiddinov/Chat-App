import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeProvider extends ChangeNotifier {

  bool _themeDark = false;

  void setThemeDark(){
    // _getThemeLightVsDark();
    _themeDark = !_themeDark;
    // _setThemeLightVsDark(_themeDark);
    notifyListeners();
  }

  bool getThemeDark(){
    return _themeDark;
  }
  //
  // _getThemeLightVsDark() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _themeDark = prefs.getBool('themeMode') ?? false;
  // }
  //
  // _setThemeLightVsDark(bool themeMode) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('themeMode', themeMode);
  // }

}