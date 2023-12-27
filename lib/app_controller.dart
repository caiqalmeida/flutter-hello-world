import 'package:flutter/material.dart';

class AppControler extends ChangeNotifier {
  // Singleton Pattern
  static AppControler instance = AppControler();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    // Notify everyone that is listening to this controller
    notifyListeners();
  }
}
