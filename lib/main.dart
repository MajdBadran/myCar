import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
// import 'package:mycar/home/homescreen.dart';

// import 'home/editProfile.dart';
import 'home/profile.dart';
// import 'package:mycar/home/userprofile.dart';
// import 'package:mycar/auth/login.dart';
// import 'package:mycar/home/homepage.dart';
// import 'auth/password.dart';
// import 'auth/signup.dart';
// import 'home/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //الغاء النسخة التجريبية
      debugShowCheckedModeBanner: false,
      home: Profile(),
      theme: ThemeData(primaryColor: Colors.blueAccent),
      darkTheme: ThemeData.dark(),
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
