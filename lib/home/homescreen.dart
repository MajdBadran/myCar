import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/login.dart';
import 'package:mycar/home/homepage.dart';
import 'package:mycar/home/profile.dart';
import 'package:mycar/setting.dart/settings.dart';
import 'package:mycar/home/workshop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  List<Widget> listpage = [
    HomePage(),
    Profile(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: listpage[currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int newIndex) {
          setState(() {
            currentPage = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "الرئيسية",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "حسابي",
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: "الإعدادات",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

