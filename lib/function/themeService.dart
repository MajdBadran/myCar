import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  //Theme
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey.shade300,
    appBarTheme: const AppBarTheme(),
    dividerColor: Colors.black12,
  );
  final darkTheme = ThemeData.dark().copyWith(
    textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blue),
    primaryColor: Colors.blue,
    canvasColor: Colors.black,
    cardColor: Colors.black,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    dividerColor: Colors.white54,
  );
//لتخزين إختيار المستخدم على ذاكرة الجهاز
  final _getStorage = GetStorage();
  final _darkThemeKey = "isDarkTheme";
  void saveThemeData(bool isDarkMode) {
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode() {
    return _getStorage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }
}
