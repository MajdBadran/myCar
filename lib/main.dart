import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'function/themeService.dart';
import 'package:mycar/home/homescreen.dart';
// import 'package:mycar/auth/password.dart';
// import 'package:mycar/auth/login.dart';
// import 'package:mycar/auth/verifycode.dart';
// import 'package:mycar/auth/login.dart';
// import 'package:mycar/auth/signup.dart';
// import 'package:mycar/setting.dart/settings.dart';
// import 'package:mycar/home/userprofile.dart';
// import 'package:mycar/home/homepage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeService().lightTheme,
      darkTheme: ThemeService().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      //الغاء النسخة التجريبية
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      //اللغات التي سوف يدعمها التطبيق
      supportedLocales: [
        Locale("ar", "AE"),
      ],
      locale: Locale("ar", "AE"),
    );
  }
}
