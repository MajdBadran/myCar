import 'package:flutter/material.dart';

class DisplayPost extends StatelessWidget {
  const DisplayPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("صفحة عرض الاعلان",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
