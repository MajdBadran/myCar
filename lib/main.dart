import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/login.dart';
import 'package:mycar/core/managers/constant/cash_keys_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'function/themeService.dart';
import 'package:get_storage/get_storage.dart';

import 'home/homepage.dart';

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
      home: HomePageTemp(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      //اللغات التي سوف يدعمها التطبيق
      supportedLocales: [Locale("ar"), Locale("en")],
      locale: Locale("ar", "AE"),
    );
  }
}

class HomePageTemp extends StatefulWidget {
  const HomePageTemp({Key? key}) : super(key: key);

  @override
  State<HomePageTemp> createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Future<void> init() async {
    final shared = await SharedPreferences.getInstance();
    final token = shared.getString(CashKeys.token);
    if(token == null||token.isEmpty){
      Get.to(()=>HomePage());
    }else{
      Get.to(()=>LogIn());
    }
  }
}

