import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/companies.dart';
import 'package:mycar/home/workshop.dart';
import '../auth/login.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:mycar/home/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "سيارتي",
            style: TextStyle(fontFamily: "Mirza", fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(LogIn());
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 1,
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: "اسم السيارة",
                        hintStyle: TextStyle(color: Colors.black38),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(WorkShop());
                      },
                      child: Text("ورشات الصيانة"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(Companies());
                      },
                      child: Text("الشركات"),
                    ),
                  ],
                ),
              ),
              Column(
                children: [],
              )
            ],
          ),
        ));
  }
}
