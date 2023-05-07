import 'package:flutter/material.dart';

class WorkShop extends StatelessWidget {
  const WorkShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ورشات الصيانة",
          style: TextStyle(fontFamily: "Mirza", fontSize: 30),
        ),
      ),
      body: Text(
        "WorkShop",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
